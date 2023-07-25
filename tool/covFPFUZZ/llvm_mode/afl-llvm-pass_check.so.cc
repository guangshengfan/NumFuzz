/*
   american fuzzy lop - LLVM-mode instrumentation pass
   ---------------------------------------------------

   Written by Laszlo Szekeres <lszekeres@google.com> and
              Michal Zalewski <lcamtuf@google.com>

   LLVM integration design comes from Laszlo Szekeres. C bits copied-and-pasted
   from afl-as.c are Michal's fault.

   Copyright 2015, 2016 Google Inc. All rights reserved.

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at:

     http://www.apache.org/licenses/LICENSE-2.0

   This library is plugged into LLVM when invoking clang through afl-clang-fast.
   It tells the compiler to add code roughly equivalent to the bits discussed
   in ../afl-as.h.

 */

#define AFL_LLVM_PASS

#include "../config.h"
#include "../debug.h"

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#include "llvm/ADT/Statistic.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/Debug.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

// Add by chenghu -----------Begin
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/IR/Metadata.h"
#include "llvm/ADT/StringRef.h"
#include "llvm/IR/Instructions.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Pass.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/IR/Constant.h"
#include "llvm/IR/Type.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/raw_ostream.h"
// Add by chenghu -----------Ending 

using namespace llvm;

namespace {

  class AFLCoverage : public ModulePass {

    public:

      static char ID;
      AFLCoverage() : ModulePass(ID) { }

      bool runOnModule(Module &M) override;

      // StringRef getPassName() const override {
      //  return "American Fuzzy Lop Instrumentation";
      // }

      //Add by chenghu -------------Begin
      static bool isFPOperation(const Instruction *inst);
      static bool isFDivOperation(const Instruction *inst);
      static bool isDoubleFPOperation(const Instruction *inst);
      static bool isSingleFPOperation(const Instruction *inst);
      //Add by chenghu -------------Ending

  };

}

unsigned int BKDRHash(char *str, int divisor)
{
    unsigned int seed = 131; // 31 131 1313 13131 131313 etc..
    unsigned int hash = 0;
 
    while (*str)
    {
        hash = hash * seed + (*str++);
    }

    hash = hash & 0x7FFFFFFF;
 
    return hash % divisor;
}



// Add by chenghu ---------------Begining

bool AFLCoverage::isFPOperation(const Instruction *inst)
{
  return (
      (inst->getOpcode() == Instruction::FMul) ||
      (inst->getOpcode() == Instruction::FAdd) ||
      (inst->getOpcode() == Instruction::FSub)
         );  
}

bool AFLCoverage::isFDivOperation(const Instruction *inst)
{
  return (inst->getOpcode() == Instruction::FDiv);
}


bool AFLCoverage::isDoubleFPOperation(const Instruction *inst)
{
  if (!isFPOperation(inst) && !isFDivOperation(inst))
    return false;
  return inst->getType()->isDoubleTy();
}

bool AFLCoverage::isSingleFPOperation(const Instruction *inst)
{
  if (!isFPOperation(inst) && !isFDivOperation(inst))
    return false;
  return inst->getType()->isFloatTy();
}

// Add by chenghu -------------Ending


char AFLCoverage::ID = 0;


bool AFLCoverage::runOnModule(Module &M) {

  StringRef source_name = M.getName();

  errs() << source_name << "\n";

  LLVMContext &C = M.getContext();

  IntegerType *Int8Ty  = IntegerType::getInt8Ty(C);
  IntegerType *Int32Ty = IntegerType::getInt32Ty(C);

  /* Show a banner */

  char be_quiet = 0;

  if (isatty(2) && !getenv("AFL_QUIET")) {

    SAYF(cCYA "afl-llvm-pass " cBRI VERSION cRST " by <lszekeres@google.com>\n");

  } else be_quiet = 1;

  /* Decide instrumentation ratio */

  char* inst_ratio_str = getenv("AFL_INST_RATIO");
  unsigned int inst_ratio = 100;

  if (inst_ratio_str) {

    if (sscanf(inst_ratio_str, "%u", &inst_ratio) != 1 || !inst_ratio ||
        inst_ratio > 100)
      FATAL("Bad value of AFL_INST_RATIO (must be between 1 and 100)");

  }

  /* Get globals for the SHM region and the previous location. Note that
     __afl_prev_loc is thread-local. */

  /*Begin: Added by chenghu*/

  /*添加函数声明，插桩函数*/
  llvm::LLVMContext& context = M.getContext();
  llvm::IRBuilder <> builder(context);

  // Function _show_Float()
  std::vector <Type*> argTypesFloat;
  argTypesFloat.push_back(builder.getFloatTy());
  ArrayRef <Type*> argTypesRefFloat(argTypesFloat);
  llvm::FunctionType *funcFloatType = FunctionType::get(builder.getVoidTy(), argTypesRefFloat, false);
  llvm::Function *_show_FloatFunc = Function::Create(funcFloatType, llvm::Function::ExternalLinkage, "_show_Float", &M);

  // Function _show_Double()
  std::vector <Type*> argTypesDouble;
  argTypesDouble.push_back(builder.getDoubleTy());
  argTypesDouble.push_back(builder.getInt8PtrTy());
  argTypesDouble.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefDouble(argTypesDouble);
  llvm::FunctionType *funcDoubleType = FunctionType::get(builder.getVoidTy(), argTypesRefDouble, false);
  llvm::Function *_show_DoubleFunc = Function::Create(funcDoubleType, llvm::Function::ExternalLinkage, "_show_Double", &M);

  // Function _show_FloatDiv()
  std::vector <Type*> argTypesFloatDiv;
  argTypesFloatDiv.push_back(builder.getFloatTy());
  argTypesFloatDiv.push_back(builder.getFloatTy());
  ArrayRef <Type*> argTypesRefFloatDiv(argTypesFloatDiv);
  llvm::FunctionType *funcFloatDivType = FunctionType::get(builder.getVoidTy(), argTypesRefFloatDiv, false);
  llvm::Function *_show_FloatDivFunc = Function::Create(funcFloatDivType, llvm::Function::ExternalLinkage, "_show_FloatDiv", &M);

  // Function _show_DoubleDiv()
  std::vector <Type*> argTypesDoubleDiv;
  argTypesDoubleDiv.push_back(builder.getDoubleTy());
  argTypesDoubleDiv.push_back(builder.getDoubleTy());
  argTypesDoubleDiv.push_back(builder.getInt8PtrTy());
  argTypesDoubleDiv.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefDoubleDiv(argTypesDoubleDiv);
  llvm::FunctionType *funcDoubleDivType = FunctionType::get(builder.getVoidTy(), argTypesRefDoubleDiv, false);
  llvm::Function *_show_DoubleDivFunc = Function::Create(funcDoubleDivType, llvm::Function::ExternalLinkage, "_show_DoubleDiv", &M);

  // Function _show_Sqrt()
  std::vector <Type*> argTypesSqrt;
  argTypesSqrt.push_back(builder.getDoubleTy());
  argTypesSqrt.push_back(builder.getInt8PtrTy());
  argTypesSqrt.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefSqrt(argTypesSqrt);
  llvm::FunctionType *funcSqrtType = FunctionType::get(builder.getVoidTy(), argTypesRefSqrt, false);
  llvm::Function *_show_SqrtFunc = Function::Create(funcSqrtType, llvm::Function::ExternalLinkage, "_show_Sqrt", &M);

  // Function _show_Log()
  std::vector <Type*> argTypesLog;
  argTypesLog.push_back(builder.getDoubleTy());
  argTypesLog.push_back(builder.getInt8PtrTy());
  argTypesLog.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefLog(argTypesLog);
  llvm::FunctionType *funcLogType = FunctionType::get(builder.getVoidTy(), argTypesRefLog, false);
  llvm::Function *_show_LogFunc = Function::Create(funcLogType, llvm::Function::ExternalLinkage, "_show_Log", &M);

  // Function _show_Exp()
  std::vector <Type*> argTypesExp;
  argTypesExp.push_back(builder.getDoubleTy());
  argTypesExp.push_back(builder.getInt8PtrTy());
  argTypesExp.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefExp(argTypesExp);
  llvm::FunctionType *funcExpType = FunctionType::get(builder.getVoidTy(), argTypesRefExp, false);
  llvm::Function *_show_ExpFunc = Function::Create(funcExpType, llvm::Function::ExternalLinkage, "_show_Exp", &M);

  // Function _show_Pow()
  std::vector <Type*> argTypesPow;
  argTypesPow.push_back(builder.getDoubleTy());
  argTypesPow.push_back(builder.getDoubleTy());
  argTypesPow.push_back(builder.getInt8PtrTy());
  argTypesPow.push_back(builder.getInt32Ty());
  ArrayRef <Type*> argTypesRefPow(argTypesPow);
  llvm::FunctionType *funcPowType = FunctionType::get(builder.getVoidTy(), argTypesRefPow, false);
  llvm::Function *_show_PowFunc = Function::Create(funcPowType, llvm::Function::ExternalLinkage, "_show_Pow", &M);

  // Function DoubleErrBits()
  std::vector <Type*> argTypesDoubleErrBits;
  argTypesDoubleErrBits.push_back(builder.getInt32Ty());
  argTypesDoubleErrBits.push_back(builder.getInt8PtrTy());
  argTypesDoubleErrBits.push_back(builder.getDoubleTy());
  ArrayRef <Type*> argTypesRefDoubleErrBits(argTypesDoubleErrBits);
  llvm::FunctionType *funcDoubleErrBitsType = FunctionType::get(builder.getVoidTy(), argTypesRefDoubleErrBits, false);
  llvm::Function *DoubleErrBitsFunc = Function::Create(funcDoubleErrBitsType, llvm::Function::ExternalLinkage, "DoubleErrBits", &M);


  // Function DoubleDivErrBits()
  std::vector <Type*> argTypesDoubleDivErrBits;
  argTypesDoubleDivErrBits.push_back(builder.getInt32Ty());
  argTypesDoubleDivErrBits.push_back(builder.getInt8PtrTy());
  argTypesDoubleDivErrBits.push_back(builder.getDoubleTy());
  ArrayRef <Type*> argTypesRefDoubleDivErrBits(argTypesDoubleDivErrBits);
  llvm::FunctionType *funcDoubleDivErrBitsType = FunctionType::get(builder.getVoidTy(), argTypesRefDoubleDivErrBits, false);
  llvm::Function *DoubleDivErrBitsFunc = Function::Create(funcDoubleDivErrBitsType, llvm::Function::ExternalLinkage, "DoubleDivErrBits", &M);

  /*End: Added by chenghu*/

  GlobalVariable *AFLMapPtr =
      new GlobalVariable(M, PointerType::get(Int8Ty, 0), false,
                         GlobalValue::ExternalLinkage, 0, "__afl_area_ptr");

  GlobalVariable *AFLPrevLoc = new GlobalVariable(
      M, Int32Ty, false, GlobalValue::ExternalLinkage, 0, "__afl_prev_loc",
      0, GlobalVariable::GeneralDynamicTLSModel, 0, false);

  /* Instrument all the things! */

  int inst_blocks = 0;

  for (auto &F : M)
  {

    // if (F.getName().startswith("_show_")) continue;   //Add by chenghu

    for (auto &BB : F) {

      /*Begin: Add by chenghu*/

      // 插桩单精度浮点运算（不包括除法）
      int insetFloatFlag = 0;
      Value *tmpFloatInst;


      // 插桩双精度浮点运算 （不包括除法）
      int insetDoubleFlag = 0;
      Value *tmpDoubleInst;
      Value *tmpDoubleLine;

      int insetDoubleID;
      Value *tmpDLableName;


      // 插桩单精度浮点除法运算
      int insetFloatDivFlag = 0;
      Value *tmpFloatDivInst;
      Value *tmpFloatDivInst2;


      // 插桩双精度浮点除法运算
      int insetDoubleDivFlag = 0;
      Value *tmpDoubleDivInst;
      Value *tmpDoubleDivInst2;
      Value *tmpDoubleDivLine;

      int insetDoubleDivID;
      Value *tmpDoubleErrBitsInst;
      Value *tmpDivLableName;

      // 插桩Sqrt函数
      int insetSqrtFlag = 0;
      Value *tmpSqrtInst;
      Value *tmpSqrtLine;


      // 插桩Log函数
      int insetLogFlag = 0;
      Value *tmpLogInst;
      Value *tmpLogLine;


      // 插桩Exp函数
      int insetExpFlag = 0;
      Value *tmpExpInst;
      Value *tmpExpLine;


      // 插桩Pow函数
      int insetPowFlag = 0;
      Value *tmpPowInst1;
      Value *tmpPowInst2;
      Value *tmpPowLine;


      for (auto I=BB.begin(), Bend=BB.end(); I!=Bend; I++)
      {

        IRBuilder <> FloatFuzBuilder(&(*I));      //插桩的位置   added by chenghu

        Value *filename = FloatFuzBuilder.CreateGlobalStringPtr(M.getName());

        if (Instruction *Inst = dyn_cast<Instruction>(I))
        {

          // 插Float型运算（不包括除法）
          if (insetFloatFlag == 1)
          {
            insetFloatFlag = 0;
            FloatFuzBuilder.CreateCall(_show_FloatFunc, tmpFloatInst);
          }

          // 插Double型运算（不包括除法）
          if (insetDoubleFlag == 1)
          {
            insetDoubleFlag = 0;
            Value *DoubleID = ConstantInt::get(Type::getInt32Ty(context), insetDoubleID);

            // std::string str;
            // raw_string_ostream stream(str);
            // errs() << "DoubleID is ";
            // DoubleID->printAsOperand(stream, false);
            // errs() << stream.str() << "\n";

            SmallVector <Value *, 3> DoubleArg;
            DoubleArg.push_back(tmpDoubleInst);
            DoubleArg.push_back(filename);
            DoubleArg.push_back(tmpDoubleLine);

            SmallVector <Value *, 3> DoubleErrBitsArg;
            DoubleErrBitsArg.push_back(DoubleID);
            DoubleErrBitsArg.push_back(tmpDLableName);
            DoubleErrBitsArg.push_back(tmpDoubleInst);

            FloatFuzBuilder.CreateCall(DoubleErrBitsFunc, DoubleErrBitsArg);
            FloatFuzBuilder.CreateCall(_show_DoubleFunc, DoubleArg);
          }

          // 插Float型除法运算
          if (insetFloatDivFlag == 1)
          {
            insetFloatDivFlag = 0;
            SmallVector <Value *, 2> FloatDivArg;
            FloatDivArg.push_back(tmpFloatDivInst);
            FloatDivArg.push_back(tmpFloatDivInst2);
            FloatFuzBuilder.CreateCall(_show_FloatDivFunc, FloatDivArg);
          }

          // 插Double型除法运算
          if (insetDoubleDivFlag == 1)
          {

            Value * DoubleDivID = ConstantInt::get(Type::getInt32Ty(context), insetDoubleDivID);
            SmallVector <Value *, 3> DoubleDivErrBitsArg;
            DoubleDivErrBitsArg.push_back(DoubleDivID);
            DoubleDivErrBitsArg.push_back(tmpDivLableName);
            DoubleDivErrBitsArg.push_back(tmpDoubleErrBitsInst);
            FloatFuzBuilder.CreateCall(DoubleDivErrBitsFunc, DoubleDivErrBitsArg);

            insetDoubleDivFlag = 0;
            SmallVector <Value *, 4> DoubleDivArg;
            DoubleDivArg.push_back(tmpDoubleDivInst);
            DoubleDivArg.push_back(tmpDoubleDivInst2);
            DoubleDivArg.push_back(filename);
            DoubleDivArg.push_back(tmpDoubleDivLine);
            FloatFuzBuilder.CreateCall(_show_DoubleDivFunc, DoubleDivArg);
            
          }

          // 插Sqrt函数
          if (insetSqrtFlag == 1) {

            insetSqrtFlag = 0;
            SmallVector <Value *, 3> SqrtArg;
            SqrtArg.push_back(tmpSqrtInst);
            SqrtArg.push_back(filename);
            SqrtArg.push_back(tmpSqrtLine);
            FloatFuzBuilder.CreateCall(_show_SqrtFunc, SqrtArg);

          }

          // 插Log函数
          if (insetLogFlag == 1) {

            insetLogFlag = 0;
            SmallVector <Value *, 3> LogArg;
            LogArg.push_back(tmpLogInst);
            LogArg.push_back(filename);
            LogArg.push_back(tmpLogLine);
            FloatFuzBuilder.CreateCall(_show_LogFunc, LogArg);

          }

          // 插Exp函数
          if (insetExpFlag == 1) {

            insetExpFlag = 0;
            SmallVector <Value *, 3> ExpArg;
            ExpArg.push_back(tmpExpInst);
            ExpArg.push_back(filename);
            ExpArg.push_back(tmpExpLine);
            FloatFuzBuilder.CreateCall(_show_ExpFunc, ExpArg);

          }

          // 插Pow函数
          if (insetPowFlag == 1) {

            insetPowFlag = 0;
            SmallVector <Value *, 4> PowArg;
            PowArg.push_back(tmpPowInst1);
            PowArg.push_back(tmpPowInst2);
            PowArg.push_back(filename);
            PowArg.push_back(tmpPowLine);
            FloatFuzBuilder.CreateCall(_show_PowFunc, PowArg);

          }

          // 在浮点运算指令中搜索（不包括除法）
          if (isFPOperation(Inst))
          {

            std::string func_name = F.getName();
            DILocation *Loc = Inst->getDebugLoc();
            int Line = Loc->getLine();

            // StringRef File = Loc->getFilename();
            // StringRef Dir = Loc->getDirectory();
            // errs() << Dir << "\n"; 
            
            // errs() << Line << "\n";

            std::string str, str_need, str_num;
            char *lablename;
            unsigned int hashid;
            // int id;
            raw_string_ostream string_stream(str);
            Inst->printAsOperand(string_stream, false);  
            str_need = string_stream.str();

            lablename = const_cast<char *>(func_name.data());
            strcat(lablename, str_need.c_str());
            hashid = BKDRHash(lablename, NUM);
            

            // errs() << lablename << " ";
            // errs() << hashid << "\n";

            // str_num = strrchr(str_need.c_str(), '%') + 1;
            // sscanf(str_num.c_str(), "%d", &id);
            // errs() << id << "\n";


            if (isSingleFPOperation(Inst))
            {
              insetFloatFlag = 1;
              tmpFloatInst = Inst;        
            }

            if (isDoubleFPOperation(Inst))
            {
              insetDoubleFlag = 1;
              tmpDoubleInst = Inst;
              tmpDoubleLine = ConstantInt::get(Type::getInt32Ty(context), Line);
              insetDoubleID = hashid; 
              tmpDLableName = FloatFuzBuilder.CreateGlobalStringPtr(lablename);           
            }

          }

          // 在浮点除法运算指令中搜索
          if (isFDivOperation(Inst))
          {

            std::string div_func_name = F.getName();
            DILocation *Loc = Inst->getDebugLoc();
            int Line = Loc->getLine();

            // errs() << Line << " div\n";

            std::string div_str, div_str_need, div_str_num;
            char *div_lablename;
            unsigned int div_hashid;
            // int div_id;

            raw_string_ostream div_string_stream(div_str);
            Inst->printAsOperand(div_string_stream, false);
            div_str_need = div_string_stream.str();

            div_lablename = const_cast<char *>(div_func_name.data());
            strcat(div_lablename, div_str_need.c_str());
            div_hashid = BKDRHash(div_lablename, NUM);

            // errs() << "div " << div_lablename << " ";
            // errs() << div_hashid << "\n";

            // div_str_num = strrchr(div_str_need.c_str(), '%') + 1;
            // sscanf(div_str_num.c_str(), "%d", &div_id);
            // errs() << div_id << "\n";


            if (isSingleFPOperation(Inst))
            {
              insetFloatDivFlag = 1;
              tmpFloatDivInst = Inst->getOperand(0);
              tmpFloatDivInst2 = Inst->getOperand(1);         
            }

            if (isDoubleFPOperation(Inst))
            {
              insetDoubleDivFlag = 1;
              tmpDoubleDivInst = Inst->getOperand(0);
              tmpDoubleDivInst2 = Inst->getOperand(1);
              tmpDoubleDivLine = ConstantInt::get(Type::getInt32Ty(context), Line);

              insetDoubleDivID = div_hashid;
              tmpDoubleErrBitsInst = Inst->getOperand(1);
              tmpDivLableName = FloatFuzBuilder.CreateGlobalStringPtr(div_lablename);
            }

          } // end if-FDiv

          if (Inst->getOpcode() == Instruction::Call) {

            std::string instr_sqrt  = "sqrt";
            std::string instr_log   = "log";
            std::string instr_exp   = "exp";
            std::string instr_pow   = "pow";

            DILocation *Loc = Inst->getDebugLoc();
            int Line = Loc->getLine();

            if (Inst->getNumOperands() >= 2) {

              if (instr_sqrt == std::string(Inst->getOperand(1)->getName())) {

                insetSqrtFlag = 1;
                tmpSqrtInst = Inst->getOperand(0);
                tmpSqrtLine = ConstantInt::get(Type::getInt32Ty(context), Line);

              }

              if (instr_log == std::string(Inst->getOperand(1)->getName())) {

                insetLogFlag = 1;
                tmpLogInst = Inst->getOperand(0);
                tmpLogLine = ConstantInt::get(Type::getInt32Ty(context), Line);

              }

              if (instr_exp == std::string(Inst->getOperand(1)->getName())) {

                insetExpFlag = 1;
                tmpExpInst = Inst->getOperand(0);
                tmpExpLine = ConstantInt::get(Type::getInt32Ty(context), Line);

              }

            }

            if (Inst->getNumOperands() >= 3) {

              if (instr_pow == std::string(Inst->getOperand(2)->getName())) {

                insetPowFlag = 1;
                tmpPowInst1 = Inst->getOperand(0);
                tmpPowInst2 = Inst->getOperand(1);
                tmpPowLine = ConstantInt::get(Type::getInt32Ty(context), Line);

              }

            }

          }

        } // end if-Instruction
        
      } //end for-BB

      /*End: Add by chenghu*/
      
      /*---start: The Instrument of AFL*/

      BasicBlock::iterator IP = BB.getFirstInsertionPt();
      IRBuilder<> IRB(&(*IP));

      if (AFL_R(100) >= inst_ratio) continue;

      /* Make up cur_loc */

      unsigned int cur_loc = AFL_R(MAP_SIZE);

      ConstantInt *CurLoc = ConstantInt::get(Int32Ty, cur_loc);

      /* Load prev_loc */

      LoadInst *PrevLoc = IRB.CreateLoad(AFLPrevLoc);
      PrevLoc->setMetadata(M.getMDKindID("nosanitize"), MDNode::get(C, None));
      Value *PrevLocCasted = IRB.CreateZExt(PrevLoc, IRB.getInt32Ty());

      /* Load SHM pointer */

      LoadInst *MapPtr = IRB.CreateLoad(AFLMapPtr);
      MapPtr->setMetadata(M.getMDKindID("nosanitize"), MDNode::get(C, None));
      Value *MapPtrIdx =
          IRB.CreateGEP(MapPtr, IRB.CreateXor(PrevLocCasted, CurLoc));

      /* Update bitmap */

      LoadInst *Counter = IRB.CreateLoad(MapPtrIdx);
      Counter->setMetadata(M.getMDKindID("nosanitize"), MDNode::get(C, None));
      Value *Incr = IRB.CreateAdd(Counter, ConstantInt::get(Int8Ty, 1));
      IRB.CreateStore(Incr, MapPtrIdx)
          ->setMetadata(M.getMDKindID("nosanitize"), MDNode::get(C, None));

      /* Set prev_loc to cur_loc >> 1 */

      StoreInst *Store =
          IRB.CreateStore(ConstantInt::get(Int32Ty, cur_loc >> 1), AFLPrevLoc);
      Store->setMetadata(M.getMDKindID("nosanitize"), MDNode::get(C, None));

      /*---end: The Instrument of AFL*/

      inst_blocks++;

    }
  }


  /* Say something nice. */

  if (!be_quiet) {

    if (!inst_blocks) WARNF("No instrumentation targets found.");
    else OKF("Instrumented %u locations (%s mode, ratio %u%%).",
             inst_blocks, getenv("AFL_HARDEN") ? "hardened" :
             ((getenv("AFL_USE_ASAN") || getenv("AFL_USE_MSAN")) ?
              "ASAN/MSAN" : "non-hardened"), inst_ratio);

  }

  return true;

}


static void registerAFLPass(const PassManagerBuilder &,
                            legacy::PassManagerBase &PM) {

  PM.add(new AFLCoverage());

}


static RegisterStandardPasses RegisterAFLPass(
    PassManagerBuilder::EP_OptimizerLast, registerAFLPass);

static RegisterStandardPasses RegisterAFLPass0(
    PassManagerBuilder::EP_EnabledOnOptLevel0, registerAFLPass);
