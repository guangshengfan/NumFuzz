; ModuleID = 'exprel2.c'
source_filename = "exprel2.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"Before call OVERFLOW_ERROR()\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"overflow\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"exprel2.c\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"gsl_sf_exprel_2_e(x, &result)\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32
@0 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@1 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@2 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@3 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@4 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@5 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@6 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@7 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@8 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@9 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@10 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@11 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@12 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@13 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@14 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@15 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%17\00"
@16 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@17 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@18 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%19\00"
@19 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@20 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%20\00"
@21 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@22 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%21\00"
@23 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@24 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@25 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@26 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@27 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@28 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@29 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@30 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@31 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%28\00"
@32 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@33 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@34 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@35 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@36 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@37 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@38 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@39 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@40 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@41 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@42 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@43 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%49\00"
@44 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@45 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@46 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%51\00"
@47 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@48 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%52\00"
@49 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@50 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@51 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@52 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%55\00"
@53 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@54 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%56\00"
@55 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@56 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@57 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@58 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@59 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@60 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@61 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@62 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@63 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%63\00"
@64 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@65 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@66 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@67 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@68 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@69 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@70 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@71 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@72 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@73 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@74 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%83\00"
@75 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@76 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@77 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%85\00"
@78 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@79 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@80 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%87\00"
@81 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@82 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@83 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%89\00"
@84 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@85 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%90\00"
@86 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@87 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%91\00"
@88 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@89 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%92\00"
@90 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@91 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%93\00"
@92 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@93 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%94\00"
@94 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@95 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%95\00"
@96 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@97 = private unnamed_addr constant [21 x i8] c"gsl_sf_exprel_2_e%96\00"
@98 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@99 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@100 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@101 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@102 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@103 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@104 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@105 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@106 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%103\00"
@107 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@108 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@109 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@110 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@111 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@112 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@113 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@114 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@115 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@116 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@117 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@118 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%124\00"
@119 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@120 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@121 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%126\00"
@122 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@123 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%127\00"
@124 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@125 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@126 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@127 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%130\00"
@128 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@129 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%131\00"
@130 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@131 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@132 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@133 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@134 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@135 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@136 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@137 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@138 = private unnamed_addr constant [22 x i8] c"gsl_sf_exprel_2_e%138\00"
@139 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@140 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@141 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@142 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@143 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@144 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@145 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@146 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@147 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@148 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@149 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@150 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@151 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@152 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@153 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@154 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@155 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@156 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@157 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@158 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@159 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@160 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@161 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@162 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@163 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@164 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@165 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@166 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@167 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@168 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@169 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@170 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@171 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@172 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@173 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@174 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@175 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@176 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@177 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@178 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@179 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@180 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@181 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@182 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@183 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@184 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@185 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@186 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@187 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@188 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@189 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@190 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@191 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@192 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@193 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@194 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@195 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@196 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@197 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@198 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@199 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@200 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@201 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@202 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@203 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@204 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@205 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@206 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@207 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@208 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@209 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@210 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@211 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@212 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@213 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@214 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@215 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@216 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@217 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@218 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@219 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@220 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@221 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@222 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@223 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@224 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@225 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"
@226 = private unnamed_addr constant [10 x i8] c"exprel2.c\00"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @gsl_sf_exprel_2_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !45 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %5 = xor i32 %3, 49620
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !57
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !57
  store i32 24810, i32* @__afl_prev_loc, !nosanitize !57
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  store double %0, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !60, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata double* %12, metadata !62, metadata !DIExpression()), !dbg !64
  store double 2.000000e-03, double* %12, align 8, !dbg !64
  %13 = load double, double* %10, align 8, !dbg !65
  %14 = fcmp olt double %13, 0xC086232BDD7ABCD2, !dbg !67
  br i1 %14, label %15, label %37, !dbg !68

; <label>:15:                                     ; preds = %2
  %16 = load i32, i32* @__afl_prev_loc, !dbg !69, !nosanitize !57
  %17 = load i8*, i8** @__afl_area_ptr, !dbg !69, !nosanitize !57
  %18 = xor i32 %16, 29252, !dbg !69
  %19 = getelementptr i8, i8* %17, i32 %18, !dbg !69
  %20 = load i8, i8* %19, !dbg !69, !nosanitize !57
  %21 = add i8 %20, 1, !dbg !69
  store i8 %21, i8* %19, !dbg !69, !nosanitize !57
  store i32 14626, i32* @__afl_prev_loc, !dbg !69, !nosanitize !57
  %22 = load double, double* %10, align 8, !dbg !69
  %23 = fdiv double -2.000000e+00, %22, !dbg !71
  call void @DoubleDivErrBits(i32 497, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @15, i32 0, i32 0), double %22), !dbg !72
  call void @_show_DoubleDiv(double -2.000000e+00, double %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @16, i32 0, i32 0), i32 40), !dbg !72
  %24 = load double, double* %10, align 8, !dbg !72
  %25 = fdiv double 1.000000e+00, %24, !dbg !73
  call void @DoubleDivErrBits(i32 499, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @18, i32 0, i32 0), double %24), !dbg !74
  call void @_show_DoubleDiv(double 1.000000e+00, double %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @19, i32 0, i32 0), i32 40), !dbg !74
  %26 = fadd double 1.000000e+00, %25, !dbg !74
  call void @DoubleErrBits(i32 621, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @20, i32 0, i32 0), double %26), !dbg !75
  call void @_show_Double(double %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @21, i32 0, i32 0), i32 40), !dbg !75
  %27 = fmul double %23, %26, !dbg !75
  call void @DoubleErrBits(i32 622, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @22, i32 0, i32 0), double %27), !dbg !76
  call void @_show_Double(double %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @23, i32 0, i32 0), i32 40), !dbg !76
  %28 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !76
  %29 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %28, i32 0, i32 0, !dbg !77
  store double %27, double* %29, align 8, !dbg !78
  %30 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !79
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %30, i32 0, i32 0, !dbg !80
  %32 = load double, double* %31, align 8, !dbg !80
  %33 = call double @llvm.fabs.f64(double %32), !dbg !81
  %34 = fmul double 0x3CC0000000000000, %33, !dbg !82
  call void @DoubleErrBits(i32 629, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @31, i32 0, i32 0), double %34), !dbg !83
  call void @_show_Double(double %34, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @32, i32 0, i32 0), i32 41), !dbg !83
  %35 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !83
  %36 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %35, i32 0, i32 1, !dbg !84
  store double %34, double* %36, align 8, !dbg !85
  store i32 0, i32* %9, align 4, !dbg !86
  br label %208, !dbg !86

; <label>:37:                                     ; preds = %2
  %38 = load i32, i32* @__afl_prev_loc, !dbg !87, !nosanitize !57
  %39 = load i8*, i8** @__afl_area_ptr, !dbg !87, !nosanitize !57
  %40 = xor i32 %38, 49778, !dbg !87
  %41 = getelementptr i8, i8* %39, i32 %40, !dbg !87
  %42 = load i8, i8* %41, !dbg !87, !nosanitize !57
  %43 = add i8 %42, 1, !dbg !87
  store i8 %43, i8* %41, !dbg !87, !nosanitize !57
  store i32 24889, i32* @__afl_prev_loc, !dbg !87, !nosanitize !57
  %44 = load double, double* %10, align 8, !dbg !87
  %45 = fcmp olt double %44, -2.000000e-03, !dbg !89
  br i1 %45, label %46, label %72, !dbg !90

; <label>:46:                                     ; preds = %37
  %47 = load i32, i32* @__afl_prev_loc, !dbg !91, !nosanitize !57
  %48 = load i8*, i8** @__afl_area_ptr, !dbg !91, !nosanitize !57
  %49 = xor i32 %47, 14494, !dbg !91
  %50 = getelementptr i8, i8* %48, i32 %49, !dbg !91
  %51 = load i8, i8* %50, !dbg !91, !nosanitize !57
  %52 = add i8 %51, 1, !dbg !91
  store i8 %52, i8* %50, !dbg !91, !nosanitize !57
  store i32 7247, i32* @__afl_prev_loc, !dbg !91, !nosanitize !57
  %53 = load double, double* %10, align 8, !dbg !91
  %54 = call double @exp(double %53) #4, !dbg !93
  %55 = fsub double %54, 1.000000e+00, !dbg !94
  call void @DoubleErrBits(i32 892, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @43, i32 0, i32 0), double %55), !dbg !95
  call void @_show_Double(double %55, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @44, i32 0, i32 0), i32 45), !dbg !95
  %56 = load double, double* %10, align 8, !dbg !95
  %57 = fsub double %55, %56, !dbg !96
  call void @DoubleErrBits(i32 1015, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @46, i32 0, i32 0), double %57), !dbg !97
  call void @_show_Double(double %57, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @47, i32 0, i32 0), i32 45), !dbg !97
  %58 = fmul double 2.000000e+00, %57, !dbg !97
  call void @DoubleErrBits(i32 1016, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @48, i32 0, i32 0), double %58), !dbg !98
  call void @_show_Double(double %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @49, i32 0, i32 0), i32 45), !dbg !98
  %59 = load double, double* %10, align 8, !dbg !98
  %60 = load double, double* %10, align 8, !dbg !99
  %61 = fmul double %59, %60, !dbg !100
  call void @DoubleErrBits(i32 1019, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @52, i32 0, i32 0), double %61), !dbg !101
  call void @_show_Double(double %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @53, i32 0, i32 0), i32 45), !dbg !101
  %62 = fdiv double %58, %61, !dbg !101
  call void @DoubleDivErrBits(i32 1020, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @54, i32 0, i32 0), double %61), !dbg !102
  call void @_show_DoubleDiv(double %58, double %61, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @55, i32 0, i32 0), i32 45), !dbg !102
  %63 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !102
  %64 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %63, i32 0, i32 0, !dbg !103
  store double %62, double* %64, align 8, !dbg !104
  %65 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !105
  %66 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %65, i32 0, i32 0, !dbg !106
  %67 = load double, double* %66, align 8, !dbg !106
  %68 = call double @llvm.fabs.f64(double %67), !dbg !107
  %69 = fmul double 0x3CC0000000000000, %68, !dbg !108
  call void @DoubleErrBits(i32 1148, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @63, i32 0, i32 0), double %69), !dbg !109
  call void @_show_Double(double %69, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @64, i32 0, i32 0), i32 46), !dbg !109
  %70 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !109
  %71 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %70, i32 0, i32 1, !dbg !110
  store double %69, double* %71, align 8, !dbg !111
  store i32 0, i32* %9, align 4, !dbg !112
  br label %208, !dbg !112

; <label>:72:                                     ; preds = %37
  %73 = load i32, i32* @__afl_prev_loc, !dbg !113, !nosanitize !57
  %74 = load i8*, i8** @__afl_area_ptr, !dbg !113, !nosanitize !57
  %75 = xor i32 %73, 52594, !dbg !113
  %76 = getelementptr i8, i8* %74, i32 %75, !dbg !113
  %77 = load i8, i8* %76, !dbg !113, !nosanitize !57
  %78 = add i8 %77, 1, !dbg !113
  store i8 %78, i8* %76, !dbg !113, !nosanitize !57
  store i32 26297, i32* @__afl_prev_loc, !dbg !113, !nosanitize !57
  %79 = load double, double* %10, align 8, !dbg !113
  %80 = fcmp olt double %79, 2.000000e-03, !dbg !115
  br i1 %80, label %81, label %112, !dbg !116

; <label>:81:                                     ; preds = %72
  %82 = load i32, i32* @__afl_prev_loc, !dbg !117, !nosanitize !57
  %83 = load i8*, i8** @__afl_area_ptr, !dbg !117, !nosanitize !57
  %84 = xor i32 %82, 17643, !dbg !117
  %85 = getelementptr i8, i8* %83, i32 %84, !dbg !117
  %86 = load i8, i8* %85, !dbg !117, !nosanitize !57
  %87 = add i8 %86, 1, !dbg !117
  store i8 %87, i8* %85, !dbg !117, !nosanitize !57
  store i32 8821, i32* @__afl_prev_loc, !dbg !117, !nosanitize !57
  %88 = load double, double* %10, align 8, !dbg !117
  %89 = fmul double 0x3FD5555555555555, %88, !dbg !119
  call void @DoubleErrBits(i32 1410, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @74, i32 0, i32 0), double %89), !dbg !120
  call void @_show_Double(double %89, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @75, i32 0, i32 0), i32 50), !dbg !120
  %90 = load double, double* %10, align 8, !dbg !120
  %91 = fmul double 2.500000e-01, %90, !dbg !121
  call void @DoubleErrBits(i32 1412, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @77, i32 0, i32 0), double %91), !dbg !122
  call void @_show_Double(double %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @78, i32 0, i32 0), i32 50), !dbg !122
  %92 = load double, double* %10, align 8, !dbg !122
  %93 = fmul double 2.000000e-01, %92, !dbg !123
  call void @DoubleErrBits(i32 1414, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @80, i32 0, i32 0), double %93), !dbg !124
  call void @_show_Double(double %93, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @81, i32 0, i32 0), i32 50), !dbg !124
  %94 = load double, double* %10, align 8, !dbg !124
  %95 = fmul double 0x3FC5555555555555, %94, !dbg !125
  call void @DoubleErrBits(i32 1416, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @83, i32 0, i32 0), double %95), !dbg !126
  call void @_show_Double(double %95, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @84, i32 0, i32 0), i32 50), !dbg !126
  %96 = fadd double 1.000000e+00, %95, !dbg !126
  call void @DoubleErrBits(i32 1538, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @85, i32 0, i32 0), double %96), !dbg !127
  call void @_show_Double(double %96, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @86, i32 0, i32 0), i32 50), !dbg !127
  %97 = fmul double %93, %96, !dbg !127
  call void @DoubleErrBits(i32 1539, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @87, i32 0, i32 0), double %97), !dbg !128
  call void @_show_Double(double %97, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @88, i32 0, i32 0), i32 50), !dbg !128
  %98 = fadd double 1.000000e+00, %97, !dbg !128
  call void @DoubleErrBits(i32 1540, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @89, i32 0, i32 0), double %98), !dbg !129
  call void @_show_Double(double %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @90, i32 0, i32 0), i32 50), !dbg !129
  %99 = fmul double %91, %98, !dbg !129
  call void @DoubleErrBits(i32 1541, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @91, i32 0, i32 0), double %99), !dbg !130
  call void @_show_Double(double %99, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @92, i32 0, i32 0), i32 50), !dbg !130
  %100 = fadd double 1.000000e+00, %99, !dbg !130
  call void @DoubleErrBits(i32 1542, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @93, i32 0, i32 0), double %100), !dbg !131
  call void @_show_Double(double %100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @94, i32 0, i32 0), i32 50), !dbg !131
  %101 = fmul double %89, %100, !dbg !131
  call void @DoubleErrBits(i32 1543, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @95, i32 0, i32 0), double %101), !dbg !132
  call void @_show_Double(double %101, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @96, i32 0, i32 0), i32 50), !dbg !132
  %102 = fadd double 1.000000e+00, %101, !dbg !132
  call void @DoubleErrBits(i32 1544, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @97, i32 0, i32 0), double %102), !dbg !133
  call void @_show_Double(double %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @98, i32 0, i32 0), i32 50), !dbg !133
  %103 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !133
  %104 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %103, i32 0, i32 0, !dbg !134
  store double %102, double* %104, align 8, !dbg !135
  %105 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !136
  %106 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %105, i32 0, i32 0, !dbg !137
  %107 = load double, double* %106, align 8, !dbg !137
  %108 = call double @llvm.fabs.f64(double %107), !dbg !138
  %109 = fmul double 0x3CC0000000000000, %108, !dbg !139
  call void @DoubleErrBits(i32 2676, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @106, i32 0, i32 0), double %109), !dbg !140
  call void @_show_Double(double %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @107, i32 0, i32 0), i32 51), !dbg !140
  %110 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !140
  %111 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %110, i32 0, i32 1, !dbg !141
  store double %109, double* %111, align 8, !dbg !142
  store i32 0, i32* %9, align 4, !dbg !143
  br label %208, !dbg !143

; <label>:112:                                    ; preds = %72
  %113 = load i32, i32* @__afl_prev_loc, !dbg !144, !nosanitize !57
  %114 = load i8*, i8** @__afl_area_ptr, !dbg !144, !nosanitize !57
  %115 = xor i32 %113, 16062, !dbg !144
  %116 = getelementptr i8, i8* %114, i32 %115, !dbg !144
  %117 = load i8, i8* %116, !dbg !144, !nosanitize !57
  %118 = add i8 %117, 1, !dbg !144
  store i8 %118, i8* %116, !dbg !144, !nosanitize !57
  store i32 8031, i32* @__afl_prev_loc, !dbg !144, !nosanitize !57
  %119 = load double, double* %10, align 8, !dbg !144
  %120 = fcmp olt double %119, 0x40862E42FEFA39EF, !dbg !146
  br i1 %120, label %121, label %147, !dbg !147

; <label>:121:                                    ; preds = %112
  %122 = load i32, i32* @__afl_prev_loc, !dbg !148, !nosanitize !57
  %123 = load i8*, i8** @__afl_area_ptr, !dbg !148, !nosanitize !57
  %124 = xor i32 %122, 33969, !dbg !148
  %125 = getelementptr i8, i8* %123, i32 %124, !dbg !148
  %126 = load i8, i8* %125, !dbg !148, !nosanitize !57
  %127 = add i8 %126, 1, !dbg !148
  store i8 %127, i8* %125, !dbg !148, !nosanitize !57
  store i32 16984, i32* @__afl_prev_loc, !dbg !148, !nosanitize !57
  %128 = load double, double* %10, align 8, !dbg !148
  %129 = call double @exp(double %128) #4, !dbg !150
  %130 = fsub double %129, 1.000000e+00, !dbg !151
  call void @DoubleErrBits(i32 2939, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @118, i32 0, i32 0), double %130), !dbg !152
  call void @_show_Double(double %130, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @119, i32 0, i32 0), i32 55), !dbg !152
  %131 = load double, double* %10, align 8, !dbg !152
  %132 = fsub double %130, %131, !dbg !153
  call void @DoubleErrBits(i32 2941, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @121, i32 0, i32 0), double %132), !dbg !154
  call void @_show_Double(double %132, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @122, i32 0, i32 0), i32 55), !dbg !154
  %133 = fmul double 2.000000e+00, %132, !dbg !154
  call void @DoubleErrBits(i32 2942, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @123, i32 0, i32 0), double %133), !dbg !155
  call void @_show_Double(double %133, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @124, i32 0, i32 0), i32 55), !dbg !155
  %134 = load double, double* %10, align 8, !dbg !155
  %135 = load double, double* %10, align 8, !dbg !156
  %136 = fmul double %134, %135, !dbg !157
  call void @DoubleErrBits(i32 3066, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @127, i32 0, i32 0), double %136), !dbg !158
  call void @_show_Double(double %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @128, i32 0, i32 0), i32 55), !dbg !158
  %137 = fdiv double %133, %136, !dbg !158
  call void @DoubleDivErrBits(i32 3067, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @129, i32 0, i32 0), double %136), !dbg !159
  call void @_show_DoubleDiv(double %133, double %136, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @130, i32 0, i32 0), i32 55), !dbg !159
  %138 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !159
  %139 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %138, i32 0, i32 0, !dbg !160
  store double %137, double* %139, align 8, !dbg !161
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !162
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 0, !dbg !163
  %142 = load double, double* %141, align 8, !dbg !163
  %143 = call double @llvm.fabs.f64(double %142), !dbg !164
  %144 = fmul double 0x3CC0000000000000, %143, !dbg !165
  call void @DoubleErrBits(i32 3074, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @138, i32 0, i32 0), double %144), !dbg !166
  call void @_show_Double(double %144, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @139, i32 0, i32 0), i32 56), !dbg !166
  %145 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !166
  %146 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %145, i32 0, i32 1, !dbg !167
  store double %144, double* %146, align 8, !dbg !168
  store i32 0, i32* %9, align 4, !dbg !169
  br label %208, !dbg !169

; <label>:147:                                    ; preds = %112
  %148 = load i32, i32* @__afl_prev_loc, !dbg !170, !nosanitize !57
  %149 = load i8*, i8** @__afl_area_ptr, !dbg !170, !nosanitize !57
  %150 = xor i32 %148, 23564, !dbg !170
  %151 = getelementptr i8, i8* %149, i32 %150, !dbg !170
  %152 = load i8, i8* %151, !dbg !170, !nosanitize !57
  %153 = add i8 %152, 1, !dbg !170
  store i8 %153, i8* %151, !dbg !170, !nosanitize !57
  store i32 11782, i32* @__afl_prev_loc, !dbg !170, !nosanitize !57
  %154 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0)), !dbg !170
  br label %155, !dbg !172, !llvm.loop !173

; <label>:155:                                    ; preds = %147
  %156 = load i32, i32* @__afl_prev_loc, !dbg !174, !nosanitize !57
  %157 = load i8*, i8** @__afl_area_ptr, !dbg !174, !nosanitize !57
  %158 = xor i32 %156, 60361, !dbg !174
  %159 = getelementptr i8, i8* %157, i32 %158, !dbg !174
  %160 = load i8, i8* %159, !dbg !174, !nosanitize !57
  %161 = add i8 %160, 1, !dbg !174
  store i8 %161, i8* %159, !dbg !174, !nosanitize !57
  store i32 30180, i32* @__afl_prev_loc, !dbg !174, !nosanitize !57
  %162 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !174
  %163 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %162, i32 0, i32 0, !dbg !174
  store double 0x7FF0000000000000, double* %163, align 8, !dbg !174
  %164 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !174
  %165 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %164, i32 0, i32 1, !dbg !174
  store double 0x7FF0000000000000, double* %165, align 8, !dbg !174
  br label %166, !dbg !174, !llvm.loop !176

; <label>:166:                                    ; preds = %155
  %167 = load i32, i32* @__afl_prev_loc, !dbg !177, !nosanitize !57
  %168 = load i8*, i8** @__afl_area_ptr, !dbg !177, !nosanitize !57
  %169 = xor i32 %167, 6199, !dbg !177
  %170 = getelementptr i8, i8* %168, i32 %169, !dbg !177
  %171 = load i8, i8* %170, !dbg !177, !nosanitize !57
  %172 = add i8 %171, 1, !dbg !177
  store i8 %172, i8* %170, !dbg !177, !nosanitize !57
  store i32 3099, i32* @__afl_prev_loc, !dbg !177, !nosanitize !57
  call void @gsl_error(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 61, i32 16), !dbg !177
  store i32 16, i32* %9, align 4, !dbg !177
  br label %208, !dbg !177
                                                  ; No predecessors!
  %174 = load i32, i32* @__afl_prev_loc, !dbg !174, !nosanitize !57
  %175 = load i8*, i8** @__afl_area_ptr, !dbg !174, !nosanitize !57
  %176 = xor i32 %174, 1061, !dbg !174
  %177 = getelementptr i8, i8* %175, i32 %176, !dbg !174
  %178 = load i8, i8* %177, !dbg !174, !nosanitize !57
  %179 = add i8 %178, 1, !dbg !174
  store i8 %179, i8* %177, !dbg !174, !nosanitize !57
  store i32 530, i32* @__afl_prev_loc, !dbg !174, !nosanitize !57
  br label %180, !dbg !174

; <label>:180:                                    ; preds = %173
  %181 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %182 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %183 = xor i32 %181, 35624
  %184 = getelementptr i8, i8* %182, i32 %183
  %185 = load i8, i8* %184, !nosanitize !57
  %186 = add i8 %185, 1
  store i8 %186, i8* %184, !nosanitize !57
  store i32 17812, i32* @__afl_prev_loc, !nosanitize !57
  br label %187

; <label>:187:                                    ; preds = %180
  %188 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %189 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %190 = xor i32 %188, 45349
  %191 = getelementptr i8, i8* %189, i32 %190
  %192 = load i8, i8* %191, !nosanitize !57
  %193 = add i8 %192, 1
  store i8 %193, i8* %191, !nosanitize !57
  store i32 22674, i32* @__afl_prev_loc, !nosanitize !57
  br label %194

; <label>:194:                                    ; preds = %187
  %195 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %196 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %197 = xor i32 %195, 7052
  %198 = getelementptr i8, i8* %196, i32 %197
  %199 = load i8, i8* %198, !nosanitize !57
  %200 = add i8 %199, 1
  store i8 %200, i8* %198, !nosanitize !57
  store i32 3526, i32* @__afl_prev_loc, !nosanitize !57
  br label %201

; <label>:201:                                    ; preds = %194
  %202 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %203 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %204 = xor i32 %202, 45027
  %205 = getelementptr i8, i8* %203, i32 %204
  %206 = load i8, i8* %205, !nosanitize !57
  %207 = add i8 %206, 1
  store i8 %207, i8* %205, !nosanitize !57
  store i32 22513, i32* @__afl_prev_loc, !nosanitize !57
  br label %208

; <label>:208:                                    ; preds = %15, %46, %81, %121, %166, %201
  %209 = load i32, i32* @__afl_prev_loc, !dbg !179, !nosanitize !57
  %210 = load i8*, i8** @__afl_area_ptr, !dbg !179, !nosanitize !57
  %211 = xor i32 %209, 18158, !dbg !179
  %212 = getelementptr i8, i8* %210, i32 %211, !dbg !179
  %213 = load i8, i8* %212, !dbg !179, !nosanitize !57
  %214 = add i8 %213, 1, !dbg !179
  store i8 %214, i8* %212, !dbg !179, !nosanitize !57
  store i32 9079, i32* @__afl_prev_loc, !dbg !179, !nosanitize !57
  %215 = load i32, i32* %9, align 4, !dbg !179
  ret i32 %215, !dbg !179
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

; Function Attrs: nounwind
declare double @exp(double) #2

declare i32 @printf(i8*, ...) #3

declare void @gsl_error(i8*, i8*, i32, i32) #3

; Function Attrs: noinline nounwind optnone uwtable
define double @gsl_sf_exprel_2(double) #0 !dbg !180 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %4 = xor i32 %2, 38786
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !57
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !57
  store i32 19393, i32* @__afl_prev_loc, !nosanitize !57
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i32* %11, metadata !187, metadata !DIExpression()), !dbg !186
  %12 = load double, double* %9, align 8, !dbg !186
  %13 = call i32 @gsl_sf_exprel_2_e(double %12, %struct.gsl_sf_result_struct* %10), !dbg !186
  store i32 %13, i32* %11, align 4, !dbg !186
  %14 = load i32, i32* %11, align 4, !dbg !188
  %15 = icmp ne i32 %14, 0, !dbg !188
  br i1 %15, label %16, label %40, !dbg !186

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* @__afl_prev_loc, !dbg !190, !nosanitize !57
  %18 = load i8*, i8** @__afl_area_ptr, !dbg !190, !nosanitize !57
  %19 = xor i32 %17, 37068, !dbg !190
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !190
  %21 = load i8, i8* %20, !dbg !190, !nosanitize !57
  %22 = add i8 %21, 1, !dbg !190
  store i8 %22, i8* %20, !dbg !190, !nosanitize !57
  store i32 18534, i32* @__afl_prev_loc, !dbg !190, !nosanitize !57
  br label %23, !dbg !190, !llvm.loop !192

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @__afl_prev_loc, !dbg !193, !nosanitize !57
  %25 = load i8*, i8** @__afl_area_ptr, !dbg !193, !nosanitize !57
  %26 = xor i32 %24, 35708, !dbg !193
  %27 = getelementptr i8, i8* %25, i32 %26, !dbg !193
  %28 = load i8, i8* %27, !dbg !193, !nosanitize !57
  %29 = add i8 %28, 1, !dbg !193
  store i8 %29, i8* %27, !dbg !193, !nosanitize !57
  store i32 17854, i32* @__afl_prev_loc, !dbg !193, !nosanitize !57
  %30 = load i32, i32* %11, align 4, !dbg !193
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i32 0, i32 0), i32 74, i32 %30), !dbg !193
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !193
  %32 = load double, double* %31, align 8, !dbg !193
  store double %32, double* %8, align 8, !dbg !193
  br label %49, !dbg !193
                                                  ; No predecessors!
  %34 = load i32, i32* @__afl_prev_loc, !dbg !190, !nosanitize !57
  %35 = load i8*, i8** @__afl_area_ptr, !dbg !190, !nosanitize !57
  %36 = xor i32 %34, 49579, !dbg !190
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !190
  %38 = load i8, i8* %37, !dbg !190, !nosanitize !57
  %39 = add i8 %38, 1, !dbg !190
  store i8 %39, i8* %37, !dbg !190, !nosanitize !57
  store i32 24789, i32* @__afl_prev_loc, !dbg !190, !nosanitize !57
  br label %40, !dbg !190

; <label>:40:                                     ; preds = %33, %1
  %41 = load i32, i32* @__afl_prev_loc, !dbg !186, !nosanitize !57
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !186, !nosanitize !57
  %43 = xor i32 %41, 58286, !dbg !186
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !186
  %45 = load i8, i8* %44, !dbg !186, !nosanitize !57
  %46 = add i8 %45, 1, !dbg !186
  store i8 %46, i8* %44, !dbg !186, !nosanitize !57
  store i32 29143, i32* @__afl_prev_loc, !dbg !186, !nosanitize !57
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !186
  %48 = load double, double* %47, align 8, !dbg !186
  store double %48, double* %8, align 8, !dbg !186
  br label %49, !dbg !186

; <label>:49:                                     ; preds = %40, %23
  %50 = load i32, i32* @__afl_prev_loc, !dbg !195, !nosanitize !57
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !195, !nosanitize !57
  %52 = xor i32 %50, 45225, !dbg !195
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !195
  %54 = load i8, i8* %53, !dbg !195, !nosanitize !57
  %55 = add i8 %54, 1, !dbg !195
  store i8 %55, i8* %53, !dbg !195, !nosanitize !57
  store i32 22612, i32* @__afl_prev_loc, !dbg !195, !nosanitize !57
  %56 = load double, double* %8, align 8, !dbg !195
  ret double %56, !dbg !195
}

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !196 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !57
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !57
  %5 = xor i32 %3, 61845
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !57
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !57
  store i32 30922, i32* @__afl_prev_loc, !nosanitize !57
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !202, metadata !DIExpression()), !dbg !203
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata double* %12, metadata !206, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.declare(metadata double* %13, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !210, metadata !DIExpression()), !dbg !271
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !271
  call void @llvm.dbg.declare(metadata i8** %15, metadata !272, metadata !DIExpression()), !dbg !275
  %16 = load i8**, i8*** %11, align 8, !dbg !276
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !276
  %18 = load i8*, i8** %17, align 8, !dbg !276
  store i8* %18, i8** %15, align 8, !dbg !275
  %19 = load i8*, i8** %15, align 8, !dbg !277
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0)), !dbg !278
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !279
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !280
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i32 0, i32 0), double* %12), !dbg !281
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !282
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !283
  %25 = load double, double* %12, align 8, !dbg !284
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0), double %25), !dbg !285
  %27 = load double, double* %12, align 8, !dbg !286
  %28 = call double @gsl_sf_exprel_2(double %27), !dbg !287
  store double %28, double* %13, align 8, !dbg !288
  %29 = load double, double* %13, align 8, !dbg !289
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i32 0, i32 0), double %29), !dbg !290
  ret i32 0, !dbg !291
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #3

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #3

declare i32 @fclose(%struct._IO_FILE*) #3

declare void @_show_Float(float)

declare void @_show_Double(double, i8*, i32)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double, i8*, i32)

declare void @DoubleErrBits(i32, i8*, double)

declare void @DoubleDivErrBits(i32, i8*, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!41, !42, !43}
!llvm.ident = !{!44}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "exprel2.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 39, size: 32, elements: !5)
!4 = !DIFile(filename: "/usr/local/include/gsl/gsl_errno.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!5 = !{!6, !7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!6 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!7 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!8 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!9 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!10 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!11 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!12 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!13 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!14 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!15 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!16 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!17 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!18 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!19 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!20 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!21 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!22 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!23 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!24 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!25 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!26 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!27 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!28 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!29 = !DIEnumerator(name: "GSL_ESING", value: 21)
!30 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!31 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!32 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!33 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!34 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!35 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!36 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!37 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!38 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!39 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!40 = !DIEnumerator(name: "GSL_EOF", value: 32)
!41 = !{i32 2, !"Dwarf Version", i32 4}
!42 = !{i32 2, !"Debug Info Version", i32 3}
!43 = !{i32 1, !"wchar_size", i32 4}
!44 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!45 = distinct !DISubprogram(name: "gsl_sf_exprel_2_e", scope: !1, file: !1, line: 35, type: !46, isLocal: false, isDefinition: true, scopeLine: 36, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!46 = !DISubroutineType(types: !47)
!47 = !{!48, !49, !50}
!48 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!49 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !52, line: 41, baseType: !53)
!52 = !DIFile(filename: "/usr/local/include/gsl/gsl_sf_result.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !52, line: 37, size: 128, elements: !54)
!54 = !{!55, !56}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !53, file: !52, line: 38, baseType: !49, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !53, file: !52, line: 39, baseType: !49, size: 64, offset: 64)
!57 = !{}
!58 = !DILocalVariable(name: "x", arg: 1, scope: !45, file: !1, line: 35, type: !49)
!59 = !DILocation(line: 35, column: 30, scope: !45)
!60 = !DILocalVariable(name: "result", arg: 2, scope: !45, file: !1, line: 35, type: !50)
!61 = !DILocation(line: 35, column: 49, scope: !45)
!62 = !DILocalVariable(name: "cut", scope: !45, file: !1, line: 37, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!64 = !DILocation(line: 37, column: 16, scope: !45)
!65 = !DILocation(line: 39, column: 6, scope: !66)
!66 = distinct !DILexicalBlock(scope: !45, file: !1, line: 39, column: 6)
!67 = !DILocation(line: 39, column: 8, scope: !66)
!68 = !DILocation(line: 39, column: 6, scope: !45)
!69 = !DILocation(line: 40, column: 24, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !1, line: 39, column: 27)
!71 = !DILocation(line: 40, column: 23, scope: !70)
!72 = !DILocation(line: 40, column: 37, scope: !70)
!73 = !DILocation(line: 40, column: 36, scope: !70)
!74 = !DILocation(line: 40, column: 31, scope: !70)
!75 = !DILocation(line: 40, column: 25, scope: !70)
!76 = !DILocation(line: 40, column: 5, scope: !70)
!77 = !DILocation(line: 40, column: 13, scope: !70)
!78 = !DILocation(line: 40, column: 17, scope: !70)
!79 = !DILocation(line: 41, column: 48, scope: !70)
!80 = !DILocation(line: 41, column: 56, scope: !70)
!81 = !DILocation(line: 41, column: 43, scope: !70)
!82 = !DILocation(line: 41, column: 41, scope: !70)
!83 = !DILocation(line: 41, column: 5, scope: !70)
!84 = !DILocation(line: 41, column: 13, scope: !70)
!85 = !DILocation(line: 41, column: 17, scope: !70)
!86 = !DILocation(line: 42, column: 5, scope: !70)
!87 = !DILocation(line: 44, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !66, file: !1, line: 44, column: 11)
!89 = !DILocation(line: 44, column: 13, scope: !88)
!90 = !DILocation(line: 44, column: 11, scope: !66)
!91 = !DILocation(line: 45, column: 28, scope: !92)
!92 = distinct !DILexicalBlock(scope: !88, file: !1, line: 44, column: 21)
!93 = !DILocation(line: 45, column: 24, scope: !92)
!94 = !DILocation(line: 45, column: 31, scope: !92)
!95 = !DILocation(line: 45, column: 39, scope: !92)
!96 = !DILocation(line: 45, column: 37, scope: !92)
!97 = !DILocation(line: 45, column: 22, scope: !92)
!98 = !DILocation(line: 45, column: 43, scope: !92)
!99 = !DILocation(line: 45, column: 45, scope: !92)
!100 = !DILocation(line: 45, column: 44, scope: !92)
!101 = !DILocation(line: 45, column: 41, scope: !92)
!102 = !DILocation(line: 45, column: 5, scope: !92)
!103 = !DILocation(line: 45, column: 13, scope: !92)
!104 = !DILocation(line: 45, column: 17, scope: !92)
!105 = !DILocation(line: 46, column: 48, scope: !92)
!106 = !DILocation(line: 46, column: 56, scope: !92)
!107 = !DILocation(line: 46, column: 43, scope: !92)
!108 = !DILocation(line: 46, column: 41, scope: !92)
!109 = !DILocation(line: 46, column: 5, scope: !92)
!110 = !DILocation(line: 46, column: 13, scope: !92)
!111 = !DILocation(line: 46, column: 17, scope: !92)
!112 = !DILocation(line: 47, column: 5, scope: !92)
!113 = !DILocation(line: 49, column: 11, scope: !114)
!114 = distinct !DILexicalBlock(scope: !88, file: !1, line: 49, column: 11)
!115 = !DILocation(line: 49, column: 13, scope: !114)
!116 = !DILocation(line: 49, column: 11, scope: !88)
!117 = !DILocation(line: 50, column: 34, scope: !118)
!118 = distinct !DILexicalBlock(scope: !114, file: !1, line: 49, column: 20)
!119 = !DILocation(line: 50, column: 33, scope: !118)
!120 = !DILocation(line: 50, column: 48, scope: !118)
!121 = !DILocation(line: 50, column: 47, scope: !118)
!122 = !DILocation(line: 50, column: 61, scope: !118)
!123 = !DILocation(line: 50, column: 60, scope: !118)
!124 = !DILocation(line: 50, column: 78, scope: !118)
!125 = !DILocation(line: 50, column: 77, scope: !118)
!126 = !DILocation(line: 50, column: 68, scope: !118)
!127 = !DILocation(line: 50, column: 62, scope: !118)
!128 = !DILocation(line: 50, column: 55, scope: !118)
!129 = !DILocation(line: 50, column: 49, scope: !118)
!130 = !DILocation(line: 50, column: 41, scope: !118)
!131 = !DILocation(line: 50, column: 35, scope: !118)
!132 = !DILocation(line: 50, column: 24, scope: !118)
!133 = !DILocation(line: 50, column: 5, scope: !118)
!134 = !DILocation(line: 50, column: 13, scope: !118)
!135 = !DILocation(line: 50, column: 17, scope: !118)
!136 = !DILocation(line: 51, column: 48, scope: !118)
!137 = !DILocation(line: 51, column: 56, scope: !118)
!138 = !DILocation(line: 51, column: 43, scope: !118)
!139 = !DILocation(line: 51, column: 41, scope: !118)
!140 = !DILocation(line: 51, column: 5, scope: !118)
!141 = !DILocation(line: 51, column: 13, scope: !118)
!142 = !DILocation(line: 51, column: 17, scope: !118)
!143 = !DILocation(line: 52, column: 5, scope: !118)
!144 = !DILocation(line: 54, column: 11, scope: !145)
!145 = distinct !DILexicalBlock(scope: !114, file: !1, line: 54, column: 11)
!146 = !DILocation(line: 54, column: 13, scope: !145)
!147 = !DILocation(line: 54, column: 11, scope: !114)
!148 = !DILocation(line: 55, column: 28, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 54, column: 32)
!150 = !DILocation(line: 55, column: 24, scope: !149)
!151 = !DILocation(line: 55, column: 31, scope: !149)
!152 = !DILocation(line: 55, column: 39, scope: !149)
!153 = !DILocation(line: 55, column: 37, scope: !149)
!154 = !DILocation(line: 55, column: 22, scope: !149)
!155 = !DILocation(line: 55, column: 43, scope: !149)
!156 = !DILocation(line: 55, column: 45, scope: !149)
!157 = !DILocation(line: 55, column: 44, scope: !149)
!158 = !DILocation(line: 55, column: 41, scope: !149)
!159 = !DILocation(line: 55, column: 5, scope: !149)
!160 = !DILocation(line: 55, column: 13, scope: !149)
!161 = !DILocation(line: 55, column: 17, scope: !149)
!162 = !DILocation(line: 56, column: 48, scope: !149)
!163 = !DILocation(line: 56, column: 56, scope: !149)
!164 = !DILocation(line: 56, column: 43, scope: !149)
!165 = !DILocation(line: 56, column: 41, scope: !149)
!166 = !DILocation(line: 56, column: 5, scope: !149)
!167 = !DILocation(line: 56, column: 13, scope: !149)
!168 = !DILocation(line: 56, column: 17, scope: !149)
!169 = !DILocation(line: 57, column: 5, scope: !149)
!170 = !DILocation(line: 60, column: 5, scope: !171)
!171 = distinct !DILexicalBlock(scope: !145, file: !1, line: 59, column: 8)
!172 = !DILocation(line: 61, column: 5, scope: !171)
!173 = distinct !{!173, !172, !172}
!174 = !DILocation(line: 61, column: 5, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 61, column: 5)
!176 = distinct !{!176, !174, !174}
!177 = !DILocation(line: 61, column: 5, scope: !178)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 61, column: 5)
!179 = !DILocation(line: 63, column: 1, scope: !45)
!180 = distinct !DISubprogram(name: "gsl_sf_exprel_2", scope: !1, file: !1, line: 72, type: !181, isLocal: false, isDefinition: true, scopeLine: 73, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!181 = !DISubroutineType(types: !182)
!182 = !{!49, !63}
!183 = !DILocalVariable(name: "x", arg: 1, scope: !180, file: !1, line: 72, type: !63)
!184 = !DILocation(line: 72, column: 37, scope: !180)
!185 = !DILocalVariable(name: "result", scope: !180, file: !1, line: 74, type: !51)
!186 = !DILocation(line: 74, column: 3, scope: !180)
!187 = !DILocalVariable(name: "status", scope: !180, file: !1, line: 74, type: !48)
!188 = !DILocation(line: 74, column: 3, scope: !189)
!189 = distinct !DILexicalBlock(scope: !180, file: !1, line: 74, column: 3)
!190 = !DILocation(line: 74, column: 3, scope: !191)
!191 = distinct !DILexicalBlock(scope: !189, file: !1, line: 74, column: 3)
!192 = distinct !{!192, !190, !190}
!193 = !DILocation(line: 74, column: 3, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 74, column: 3)
!195 = !DILocation(line: 75, column: 1, scope: !180)
!196 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !197, isLocal: false, isDefinition: true, scopeLine: 80, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !57)
!197 = !DISubroutineType(types: !198)
!198 = !{!48, !48, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!202 = !DILocalVariable(name: "argc", arg: 1, scope: !196, file: !1, line: 79, type: !48)
!203 = !DILocation(line: 79, column: 14, scope: !196)
!204 = !DILocalVariable(name: "argv", arg: 2, scope: !196, file: !1, line: 79, type: !199)
!205 = !DILocation(line: 79, column: 27, scope: !196)
!206 = !DILocalVariable(name: "a", scope: !196, file: !1, line: 81, type: !49)
!207 = !DILocation(line: 81, column: 12, scope: !196)
!208 = !DILocalVariable(name: "b", scope: !196, file: !1, line: 81, type: !49)
!209 = !DILocation(line: 81, column: 15, scope: !196)
!210 = !DILocalVariable(name: "fp", scope: !196, file: !1, line: 82, type: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !213, line: 7, baseType: !214)
!213 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !215, line: 49, size: 1728, elements: !216)
!215 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!216 = !{!217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !232, !234, !235, !236, !240, !242, !244, !248, !251, !253, !256, !259, !260, !262, !266, !267}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !214, file: !215, line: 51, baseType: !48, size: 32)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !214, file: !215, line: 54, baseType: !200, size: 64, offset: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !214, file: !215, line: 55, baseType: !200, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !214, file: !215, line: 56, baseType: !200, size: 64, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !214, file: !215, line: 57, baseType: !200, size: 64, offset: 256)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !214, file: !215, line: 58, baseType: !200, size: 64, offset: 320)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !214, file: !215, line: 59, baseType: !200, size: 64, offset: 384)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !214, file: !215, line: 60, baseType: !200, size: 64, offset: 448)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !214, file: !215, line: 61, baseType: !200, size: 64, offset: 512)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !214, file: !215, line: 64, baseType: !200, size: 64, offset: 576)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !214, file: !215, line: 65, baseType: !200, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !214, file: !215, line: 66, baseType: !200, size: 64, offset: 704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !214, file: !215, line: 68, baseType: !230, size: 64, offset: 768)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !215, line: 36, flags: DIFlagFwdDecl)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !214, file: !215, line: 70, baseType: !233, size: 64, offset: 832)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !214, file: !215, line: 72, baseType: !48, size: 32, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !214, file: !215, line: 73, baseType: !48, size: 32, offset: 928)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !214, file: !215, line: 74, baseType: !237, size: 64, offset: 960)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !238, line: 152, baseType: !239)
!238 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!239 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !214, file: !215, line: 77, baseType: !241, size: 16, offset: 1024)
!241 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !214, file: !215, line: 78, baseType: !243, size: 8, offset: 1040)
!243 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !214, file: !215, line: 79, baseType: !245, size: 8, offset: 1048)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 8, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 1)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !214, file: !215, line: 81, baseType: !249, size: 64, offset: 1088)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !215, line: 43, baseType: null)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !214, file: !215, line: 89, baseType: !252, size: 64, offset: 1152)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !238, line: 153, baseType: !239)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !214, file: !215, line: 91, baseType: !254, size: 64, offset: 1216)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !215, line: 37, flags: DIFlagFwdDecl)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !214, file: !215, line: 92, baseType: !257, size: 64, offset: 1280)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !215, line: 38, flags: DIFlagFwdDecl)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !214, file: !215, line: 93, baseType: !233, size: 64, offset: 1344)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !214, file: !215, line: 94, baseType: !261, size: 64, offset: 1408)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !214, file: !215, line: 95, baseType: !263, size: 64, offset: 1472)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !264, line: 62, baseType: !265)
!264 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc/gsl_sf_exprel_2")
!265 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !214, file: !215, line: 96, baseType: !48, size: 32, offset: 1536)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !214, file: !215, line: 98, baseType: !268, size: 160, offset: 1568)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 160, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 20)
!271 = !DILocation(line: 82, column: 11, scope: !196)
!272 = !DILocalVariable(name: "filename", scope: !196, file: !1, line: 83, type: !273)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !201)
!275 = !DILocation(line: 83, column: 17, scope: !196)
!276 = !DILocation(line: 83, column: 28, scope: !196)
!277 = !DILocation(line: 84, column: 16, scope: !196)
!278 = !DILocation(line: 84, column: 10, scope: !196)
!279 = !DILocation(line: 84, column: 8, scope: !196)
!280 = !DILocation(line: 85, column: 12, scope: !196)
!281 = !DILocation(line: 85, column: 5, scope: !196)
!282 = !DILocation(line: 86, column: 12, scope: !196)
!283 = !DILocation(line: 86, column: 5, scope: !196)
!284 = !DILocation(line: 88, column: 24, scope: !196)
!285 = !DILocation(line: 88, column: 5, scope: !196)
!286 = !DILocation(line: 90, column: 25, scope: !196)
!287 = !DILocation(line: 90, column: 9, scope: !196)
!288 = !DILocation(line: 90, column: 7, scope: !196)
!289 = !DILocation(line: 93, column: 39, scope: !196)
!290 = !DILocation(line: 93, column: 5, scope: !196)
!291 = !DILocation(line: 95, column: 5, scope: !196)
