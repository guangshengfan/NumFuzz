; ModuleID = 'erfc.c'
source_filename = "erfc.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsl_sf_result_struct = type { double, double }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [30 x i8] c"gsl_sf_log_erfc_e(x, &result)\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"erfc.c\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@erfc8_sum.P = internal global [6 x double] [double 0x4007D4B780645377, double 0x401DA3930A99D8DF, double 0x4018A40E0D3E694C, double 0x40141381C5862508, double 0x3FF467E6DAD8642A, double 0x3FE20DD750429B62], align 16, !dbg !0
@erfc8_sum.Q = internal global [7 x double] [double 0x400AF3DDB3BE0AF7, double 0x402337CA4DA961C6, double 0x403114D94D02EDA4, double 0x402819103A226D88, double 0x4022CAC4F877AA8B, double 0x4002158FFA22F7A8, double 1.000000e+00], align 16, !dbg !48
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32

; Function Attrs: noinline nounwind optnone uwtable
define i32 @gsl_sf_log_erfc_e(double, %struct.gsl_sf_result_struct*) #0 !dbg !61 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !53
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !53
  %5 = xor i32 %3, 36989
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !53
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !53
  store i32 18494, i32* @__afl_prev_loc, !nosanitize !53
  %9 = alloca i32, align 4
  %10 = alloca double, align 8
  %11 = alloca %struct.gsl_sf_result_struct*, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca %struct.gsl_sf_result_struct, align 8
  store double %0, double* %10, align 8
  call void @llvm.dbg.declare(metadata double* %10, metadata !72, metadata !DIExpression()), !dbg !73
  store %struct.gsl_sf_result_struct* %1, %struct.gsl_sf_result_struct** %11, align 8
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct** %11, metadata !74, metadata !DIExpression()), !dbg !75
  %27 = load double, double* %10, align 8, !dbg !76
  %28 = load double, double* %10, align 8, !dbg !78
  %29 = fmul double %27, %28, !dbg !79
  call void @DoubleErrBits(i32 23, double %29), !dbg !80
  call void @_show_Double(double %29), !dbg !80
  %30 = fcmp olt double %29, 0x3F9932CBB7F0CF30, !dbg !80
  br i1 %30, label %31, label %93, !dbg !81

; <label>:31:                                     ; preds = %2
  %32 = load i32, i32* @__afl_prev_loc, !dbg !82, !nosanitize !53
  %33 = load i8*, i8** @__afl_area_ptr, !dbg !82, !nosanitize !53
  %34 = xor i32 %32, 44176, !dbg !82
  %35 = getelementptr i8, i8* %33, i32 %34, !dbg !82
  %36 = load i8, i8* %35, !dbg !82, !nosanitize !53
  %37 = add i8 %36, 1, !dbg !82
  store i8 %37, i8* %35, !dbg !82, !nosanitize !53
  store i32 22088, i32* @__afl_prev_loc, !dbg !82, !nosanitize !53
  call void @llvm.dbg.declare(metadata double* %12, metadata !84, metadata !DIExpression()), !dbg !82
  %38 = load double, double* %10, align 8, !dbg !86
  %39 = fdiv double %38, 0x3FFC5BF891B4EF6B, !dbg !87
  call void @DoubleDivErrBits(i32 33, double 0x3FFC5BF891B4EF6B), !dbg !82
  call void @_show_DoubleDiv(double %38, double 0x3FFC5BF891B4EF6B), !dbg !82
  store double %39, double* %12, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata double* %13, metadata !88, metadata !DIExpression()), !dbg !89
  store double 0x3FD2500C749F87C0, double* %13, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata double* %14, metadata !90, metadata !DIExpression()), !dbg !91
  store double 0xBFB82A4705AE6CA0, double* %14, align 8, !dbg !91
  call void @llvm.dbg.declare(metadata double* %15, metadata !92, metadata !DIExpression()), !dbg !93
  store double 0xBF5DFA96DCBD2883, double* %15, align 8, !dbg !93
  call void @llvm.dbg.declare(metadata double* %16, metadata !94, metadata !DIExpression()), !dbg !95
  store double 0x3F9AED7943500FA5, double* %16, align 8, !dbg !95
  call void @llvm.dbg.declare(metadata double* %17, metadata !96, metadata !DIExpression()), !dbg !97
  store double 0xBF909ADCD0CDCABE, double* %17, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata double* %18, metadata !98, metadata !DIExpression()), !dbg !99
  store double 0x3F54A491DCF7AFED, double* %18, align 8, !dbg !99
  call void @llvm.dbg.declare(metadata double* %19, metadata !100, metadata !DIExpression()), !dbg !101
  store double 0x3F76D032987DFC5C, double* %19, align 8, !dbg !101
  call void @llvm.dbg.declare(metadata double* %20, metadata !102, metadata !DIExpression()), !dbg !103
  store double 0xBF72A9A996F42C40, double* %20, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata double* %21, metadata !104, metadata !DIExpression()), !dbg !105
  store double 0x3F4F00F4C5E56661, double* %21, align 8, !dbg !105
  call void @llvm.dbg.declare(metadata double* %22, metadata !106, metadata !DIExpression()), !dbg !107
  store double 0x3F55A095517B6A89, double* %22, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata double* %23, metadata !108, metadata !DIExpression()), !dbg !109
  store double -1.429060e-03, double* %23, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata double* %24, metadata !110, metadata !DIExpression()), !dbg !111
  store double 4.820400e-04, double* %24, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata double* %25, metadata !112, metadata !DIExpression()), !dbg !113
  %40 = load double, double* %12, align 8, !dbg !114
  %41 = load double, double* %12, align 8, !dbg !115
  %42 = load double, double* %12, align 8, !dbg !116
  %43 = load double, double* %12, align 8, !dbg !117
  %44 = load double, double* %12, align 8, !dbg !118
  %45 = load double, double* %12, align 8, !dbg !119
  %46 = fmul double 4.820400e-04, %45, !dbg !120
  call void @DoubleErrBits(i32 40, double %46), !dbg !121
  call void @_show_Double(double %46), !dbg !121
  %47 = fadd double -1.429060e-03, %46, !dbg !121
  call void @DoubleErrBits(i32 41, double %47), !dbg !122
  call void @_show_Double(double %47), !dbg !122
  %48 = fmul double %44, %47, !dbg !122
  call void @DoubleErrBits(i32 42, double %48), !dbg !123
  call void @_show_Double(double %48), !dbg !123
  %49 = fadd double 0x3F55A095517B6A89, %48, !dbg !123
  call void @DoubleErrBits(i32 43, double %49), !dbg !124
  call void @_show_Double(double %49), !dbg !124
  %50 = fmul double %43, %49, !dbg !124
  call void @DoubleErrBits(i32 44, double %50), !dbg !125
  call void @_show_Double(double %50), !dbg !125
  %51 = fadd double 0x3F4F00F4C5E56661, %50, !dbg !125
  call void @DoubleErrBits(i32 45, double %51), !dbg !126
  call void @_show_Double(double %51), !dbg !126
  %52 = fmul double %42, %51, !dbg !126
  call void @DoubleErrBits(i32 46, double %52), !dbg !127
  call void @_show_Double(double %52), !dbg !127
  %53 = fadd double 0xBF72A9A996F42C40, %52, !dbg !127
  call void @DoubleErrBits(i32 47, double %53), !dbg !128
  call void @_show_Double(double %53), !dbg !128
  %54 = fmul double %41, %53, !dbg !128
  call void @DoubleErrBits(i32 48, double %54), !dbg !129
  call void @_show_Double(double %54), !dbg !129
  %55 = fadd double 0x3F76D032987DFC5C, %54, !dbg !129
  call void @DoubleErrBits(i32 49, double %55), !dbg !130
  call void @_show_Double(double %55), !dbg !130
  %56 = fmul double %40, %55, !dbg !130
  call void @DoubleErrBits(i32 50, double %56), !dbg !131
  call void @_show_Double(double %56), !dbg !131
  %57 = fadd double 0x3F54A491DCF7AFED, %56, !dbg !131
  call void @DoubleErrBits(i32 51, double %57), !dbg !113
  call void @_show_Double(double %57), !dbg !113
  store double %57, double* %25, align 8, !dbg !113
  %58 = load double, double* %12, align 8, !dbg !132
  %59 = load double, double* %12, align 8, !dbg !133
  %60 = load double, double* %12, align 8, !dbg !134
  %61 = load double, double* %12, align 8, !dbg !135
  %62 = load double, double* %12, align 8, !dbg !136
  %63 = load double, double* %12, align 8, !dbg !137
  %64 = load double, double* %12, align 8, !dbg !138
  %65 = load double, double* %12, align 8, !dbg !139
  %66 = load double, double* %25, align 8, !dbg !140
  %67 = fmul double %65, %66, !dbg !141
  call void @DoubleErrBits(i32 61, double %67), !dbg !142
  call void @_show_Double(double %67), !dbg !142
  %68 = fadd double 0xBF909ADCD0CDCABE, %67, !dbg !142
  call void @DoubleErrBits(i32 62, double %68), !dbg !143
  call void @_show_Double(double %68), !dbg !143
  %69 = fmul double %64, %68, !dbg !143
  call void @DoubleErrBits(i32 63, double %69), !dbg !144
  call void @_show_Double(double %69), !dbg !144
  %70 = fadd double 0x3F9AED7943500FA5, %69, !dbg !144
  call void @DoubleErrBits(i32 64, double %70), !dbg !145
  call void @_show_Double(double %70), !dbg !145
  %71 = fmul double %63, %70, !dbg !145
  call void @DoubleErrBits(i32 65, double %71), !dbg !146
  call void @_show_Double(double %71), !dbg !146
  %72 = fadd double 0xBF5DFA96DCBD2883, %71, !dbg !146
  call void @DoubleErrBits(i32 66, double %72), !dbg !147
  call void @_show_Double(double %72), !dbg !147
  %73 = fmul double %62, %72, !dbg !147
  call void @DoubleErrBits(i32 67, double %73), !dbg !148
  call void @_show_Double(double %73), !dbg !148
  %74 = fadd double 0xBFB82A4705AE6CA0, %73, !dbg !148
  call void @DoubleErrBits(i32 68, double %74), !dbg !149
  call void @_show_Double(double %74), !dbg !149
  %75 = fmul double %61, %74, !dbg !149
  call void @DoubleErrBits(i32 69, double %75), !dbg !150
  call void @_show_Double(double %75), !dbg !150
  %76 = fadd double 0x3FD2500C749F87C0, %75, !dbg !150
  call void @DoubleErrBits(i32 70, double %76), !dbg !151
  call void @_show_Double(double %76), !dbg !151
  %77 = fmul double %60, %76, !dbg !151
  call void @DoubleErrBits(i32 71, double %77), !dbg !152
  call void @_show_Double(double %77), !dbg !152
  %78 = fadd double 1.000000e+00, %77, !dbg !152
  call void @DoubleErrBits(i32 72, double %78), !dbg !153
  call void @_show_Double(double %78), !dbg !153
  %79 = fmul double %59, %78, !dbg !153
  call void @DoubleErrBits(i32 73, double %79), !dbg !154
  call void @_show_Double(double %79), !dbg !154
  %80 = fadd double 1.000000e+00, %79, !dbg !154
  call void @DoubleErrBits(i32 74, double %80), !dbg !155
  call void @_show_Double(double %80), !dbg !155
  %81 = fmul double %58, %80, !dbg !155
  call void @DoubleErrBits(i32 75, double %81), !dbg !156
  call void @_show_Double(double %81), !dbg !156
  store double %81, double* %25, align 8, !dbg !156
  %82 = load double, double* %25, align 8, !dbg !157
  %83 = fmul double -2.000000e+00, %82, !dbg !158
  call void @DoubleErrBits(i32 77, double %83), !dbg !159
  call void @_show_Double(double %83), !dbg !159
  %84 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !159
  %85 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %84, i32 0, i32 0, !dbg !160
  store double %83, double* %85, align 8, !dbg !161
  %86 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !162
  %87 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %86, i32 0, i32 0, !dbg !163
  %88 = load double, double* %87, align 8, !dbg !163
  %89 = call double @llvm.fabs.f64(double %88), !dbg !164
  %90 = fmul double 0x3CC0000000000000, %89, !dbg !165
  call void @DoubleErrBits(i32 84, double %90), !dbg !166
  call void @_show_Double(double %90), !dbg !166
  %91 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !166
  %92 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %91, i32 0, i32 1, !dbg !167
  store double %90, double* %92, align 8, !dbg !168
  store i32 0, i32* %9, align 4, !dbg !169
  br label %151, !dbg !169

; <label>:93:                                     ; preds = %2
  %94 = load i32, i32* @__afl_prev_loc, !dbg !170, !nosanitize !53
  %95 = load i8*, i8** @__afl_area_ptr, !dbg !170, !nosanitize !53
  %96 = xor i32 %94, 16317, !dbg !170
  %97 = getelementptr i8, i8* %95, i32 %96, !dbg !170
  %98 = load i8, i8* %97, !dbg !170, !nosanitize !53
  %99 = add i8 %98, 1, !dbg !170
  store i8 %99, i8* %97, !dbg !170, !nosanitize !53
  store i32 8158, i32* @__afl_prev_loc, !dbg !170, !nosanitize !53
  %100 = load double, double* %10, align 8, !dbg !170
  %101 = fcmp ogt double %100, 8.000000e+00, !dbg !172
  br i1 %101, label %102, label %120, !dbg !173

; <label>:102:                                    ; preds = %93
  %103 = load i32, i32* @__afl_prev_loc, !dbg !174, !nosanitize !53
  %104 = load i8*, i8** @__afl_area_ptr, !dbg !174, !nosanitize !53
  %105 = xor i32 %103, 41251, !dbg !174
  %106 = getelementptr i8, i8* %104, i32 %105, !dbg !174
  %107 = load i8, i8* %106, !dbg !174, !nosanitize !53
  %108 = add i8 %107, 1, !dbg !174
  store i8 %108, i8* %106, !dbg !174, !nosanitize !53
  store i32 20625, i32* @__afl_prev_loc, !dbg !174, !nosanitize !53
  %109 = load double, double* %10, align 8, !dbg !174
  %110 = call double @log_erfc8(double %109), !dbg !176
  %111 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !177
  %112 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %111, i32 0, i32 0, !dbg !178
  store double %110, double* %112, align 8, !dbg !179
  %113 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !180
  %114 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %113, i32 0, i32 0, !dbg !181
  %115 = load double, double* %114, align 8, !dbg !181
  %116 = call double @llvm.fabs.f64(double %115), !dbg !182
  %117 = fmul double 0x3CC0000000000000, %116, !dbg !183
  call void @DoubleErrBits(i32 111, double %117), !dbg !184
  call void @_show_Double(double %117), !dbg !184
  %118 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !184
  %119 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %118, i32 0, i32 1, !dbg !185
  store double %117, double* %119, align 8, !dbg !186
  store i32 0, i32* %9, align 4, !dbg !187
  br label %151, !dbg !187

; <label>:120:                                    ; preds = %93
  %121 = load i32, i32* @__afl_prev_loc, !dbg !188, !nosanitize !53
  %122 = load i8*, i8** @__afl_area_ptr, !dbg !188, !nosanitize !53
  %123 = xor i32 %121, 3698, !dbg !188
  %124 = getelementptr i8, i8* %122, i32 %123, !dbg !188
  %125 = load i8, i8* %124, !dbg !188, !nosanitize !53
  %126 = add i8 %125, 1, !dbg !188
  store i8 %126, i8* %124, !dbg !188, !nosanitize !53
  store i32 1849, i32* @__afl_prev_loc, !dbg !188, !nosanitize !53
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %26, metadata !190, metadata !DIExpression()), !dbg !188
  %127 = load double, double* %10, align 8, !dbg !191
  %128 = call i32 @gsl_sf_erfc_e(double %127, %struct.gsl_sf_result_struct* %26), !dbg !192
  %129 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !193
  %130 = load double, double* %129, align 8, !dbg !193
  %131 = call double @log(double %130) #4, !dbg !194
  %132 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !195
  %133 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %132, i32 0, i32 0, !dbg !196
  store double %131, double* %133, align 8, !dbg !197
  %134 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 1, !dbg !198
  %135 = load double, double* %134, align 8, !dbg !198
  %136 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %26, i32 0, i32 0, !dbg !199
  %137 = load double, double* %136, align 8, !dbg !199
  %138 = fdiv double %135, %137, !dbg !200
  call void @DoubleDivErrBits(i32 132, double %137), !dbg !201
  call void @_show_DoubleDiv(double %135, double %137), !dbg !201
  %139 = call double @llvm.fabs.f64(double %138), !dbg !201
  %140 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !202
  %141 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %140, i32 0, i32 1, !dbg !203
  store double %139, double* %141, align 8, !dbg !204
  %142 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !205
  %143 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %142, i32 0, i32 0, !dbg !206
  %144 = load double, double* %143, align 8, !dbg !206
  %145 = call double @llvm.fabs.f64(double %144), !dbg !207
  %146 = fmul double 0x3CC0000000000000, %145, !dbg !208
  call void @DoubleErrBits(i32 140, double %146), !dbg !209
  call void @_show_Double(double %146), !dbg !209
  %147 = load %struct.gsl_sf_result_struct*, %struct.gsl_sf_result_struct** %11, align 8, !dbg !209
  %148 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %147, i32 0, i32 1, !dbg !210
  %149 = load double, double* %148, align 8, !dbg !211
  %150 = fadd double %149, %146, !dbg !211
  call void @DoubleErrBits(i32 144, double %150), !dbg !211
  call void @_show_Double(double %150), !dbg !211
  store double %150, double* %148, align 8, !dbg !211
  store i32 0, i32* %9, align 4, !dbg !212
  br label %151, !dbg !212

; <label>:151:                                    ; preds = %120, %102, %31
  %152 = load i32, i32* @__afl_prev_loc, !dbg !213, !nosanitize !53
  %153 = load i8*, i8** @__afl_area_ptr, !dbg !213, !nosanitize !53
  %154 = xor i32 %152, 36426, !dbg !213
  %155 = getelementptr i8, i8* %153, i32 %154, !dbg !213
  %156 = load i8, i8* %155, !dbg !213, !nosanitize !53
  %157 = add i8 %156, 1, !dbg !213
  store i8 %157, i8* %155, !dbg !213, !nosanitize !53
  store i32 18213, i32* @__afl_prev_loc, !dbg !213, !nosanitize !53
  %158 = load i32, i32* %9, align 4, !dbg !213
  ret i32 %158, !dbg !213
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readnone speculatable
declare double @llvm.fabs.f64(double) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @log_erfc8(double) #0 !dbg !214 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !53
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !53
  %4 = xor i32 %2, 16037
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !53
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !53
  store i32 8018, i32* @__afl_prev_loc, !nosanitize !53
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata double* %9, metadata !217, metadata !DIExpression()), !dbg !218
  %10 = load double, double* %8, align 8, !dbg !219
  %11 = call double @erfc8_sum(double %10), !dbg !220
  store double %11, double* %9, align 8, !dbg !221
  %12 = load double, double* %9, align 8, !dbg !222
  %13 = call double @log(double %12) #4, !dbg !223
  %14 = load double, double* %8, align 8, !dbg !224
  %15 = load double, double* %8, align 8, !dbg !225
  %16 = fmul double %14, %15, !dbg !226
  call void @DoubleErrBits(i32 10, double %16), !dbg !227
  call void @_show_Double(double %16), !dbg !227
  %17 = fsub double %13, %16, !dbg !227
  call void @DoubleErrBits(i32 11, double %17), !dbg !228
  call void @_show_Double(double %17), !dbg !228
  store double %17, double* %9, align 8, !dbg !228
  %18 = load double, double* %9, align 8, !dbg !229
  ret double %18, !dbg !230
}

declare i32 @gsl_sf_erfc_e(double, %struct.gsl_sf_result_struct*) #2

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: noinline nounwind optnone uwtable
define double @gsl_sf_log_erfc(double) #0 !dbg !231 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !53
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !53
  %4 = xor i32 %2, 27682
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !53
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !53
  store i32 13841, i32* @__afl_prev_loc, !nosanitize !53
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca %struct.gsl_sf_result_struct, align 8
  %11 = alloca i32, align 4
  store double %0, double* %9, align 8
  call void @llvm.dbg.declare(metadata double* %9, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata %struct.gsl_sf_result_struct* %10, metadata !234, metadata !DIExpression()), !dbg !235
  call void @llvm.dbg.declare(metadata i32* %11, metadata !236, metadata !DIExpression()), !dbg !235
  %12 = load double, double* %9, align 8, !dbg !235
  %13 = call i32 @gsl_sf_log_erfc_e(double %12, %struct.gsl_sf_result_struct* %10), !dbg !235
  store i32 %13, i32* %11, align 4, !dbg !235
  %14 = load i32, i32* %11, align 4, !dbg !237
  %15 = icmp ne i32 %14, 0, !dbg !237
  br i1 %15, label %16, label %40, !dbg !235

; <label>:16:                                     ; preds = %1
  %17 = load i32, i32* @__afl_prev_loc, !dbg !239, !nosanitize !53
  %18 = load i8*, i8** @__afl_area_ptr, !dbg !239, !nosanitize !53
  %19 = xor i32 %17, 40925, !dbg !239
  %20 = getelementptr i8, i8* %18, i32 %19, !dbg !239
  %21 = load i8, i8* %20, !dbg !239, !nosanitize !53
  %22 = add i8 %21, 1, !dbg !239
  store i8 %22, i8* %20, !dbg !239, !nosanitize !53
  store i32 20462, i32* @__afl_prev_loc, !dbg !239, !nosanitize !53
  br label %23, !dbg !239, !llvm.loop !241

; <label>:23:                                     ; preds = %16
  %24 = load i32, i32* @__afl_prev_loc, !dbg !242, !nosanitize !53
  %25 = load i8*, i8** @__afl_area_ptr, !dbg !242, !nosanitize !53
  %26 = xor i32 %24, 58673, !dbg !242
  %27 = getelementptr i8, i8* %25, i32 %26, !dbg !242
  %28 = load i8, i8* %27, !dbg !242, !nosanitize !53
  %29 = add i8 %28, 1, !dbg !242
  store i8 %29, i8* %27, !dbg !242, !nosanitize !53
  store i32 29336, i32* @__afl_prev_loc, !dbg !242, !nosanitize !53
  %30 = load i32, i32* %11, align 4, !dbg !242
  call void @gsl_error(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0), i32 385, i32 %30), !dbg !242
  %31 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !242
  %32 = load double, double* %31, align 8, !dbg !242
  store double %32, double* %8, align 8, !dbg !242
  br label %49, !dbg !242
                                                  ; No predecessors!
  %34 = load i32, i32* @__afl_prev_loc, !dbg !239, !nosanitize !53
  %35 = load i8*, i8** @__afl_area_ptr, !dbg !239, !nosanitize !53
  %36 = xor i32 %34, 10716, !dbg !239
  %37 = getelementptr i8, i8* %35, i32 %36, !dbg !239
  %38 = load i8, i8* %37, !dbg !239, !nosanitize !53
  %39 = add i8 %38, 1, !dbg !239
  store i8 %39, i8* %37, !dbg !239, !nosanitize !53
  store i32 5358, i32* @__afl_prev_loc, !dbg !239, !nosanitize !53
  br label %40, !dbg !239

; <label>:40:                                     ; preds = %33, %1
  %41 = load i32, i32* @__afl_prev_loc, !dbg !235, !nosanitize !53
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !235, !nosanitize !53
  %43 = xor i32 %41, 44338, !dbg !235
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !235
  %45 = load i8, i8* %44, !dbg !235, !nosanitize !53
  %46 = add i8 %45, 1, !dbg !235
  store i8 %46, i8* %44, !dbg !235, !nosanitize !53
  store i32 22169, i32* @__afl_prev_loc, !dbg !235, !nosanitize !53
  %47 = getelementptr inbounds %struct.gsl_sf_result_struct, %struct.gsl_sf_result_struct* %10, i32 0, i32 0, !dbg !235
  %48 = load double, double* %47, align 8, !dbg !235
  store double %48, double* %8, align 8, !dbg !235
  br label %49, !dbg !235

; <label>:49:                                     ; preds = %40, %23
  %50 = load i32, i32* @__afl_prev_loc, !dbg !244, !nosanitize !53
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !244, !nosanitize !53
  %52 = xor i32 %50, 23467, !dbg !244
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !244
  %54 = load i8, i8* %53, !dbg !244, !nosanitize !53
  %55 = add i8 %54, 1, !dbg !244
  store i8 %55, i8* %53, !dbg !244, !nosanitize !53
  store i32 11733, i32* @__afl_prev_loc, !dbg !244, !nosanitize !53
  %56 = load double, double* %8, align 8, !dbg !244
  ret double %56, !dbg !244
}

declare void @gsl_error(i8*, i8*, i32, i32) #2

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !245 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !53
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !53
  %5 = xor i32 %3, 7556
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !53
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !53
  store i32 3778, i32* @__afl_prev_loc, !nosanitize !53
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !251, metadata !DIExpression()), !dbg !252
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !253, metadata !DIExpression()), !dbg !254
  call void @llvm.dbg.declare(metadata double* %12, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata double* %13, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !259, metadata !DIExpression()), !dbg !320
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !320
  call void @llvm.dbg.declare(metadata i8** %15, metadata !321, metadata !DIExpression()), !dbg !324
  %16 = load i8**, i8*** %11, align 8, !dbg !325
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !325
  %18 = load i8*, i8** %17, align 8, !dbg !325
  store i8* %18, i8** %15, align 8, !dbg !324
  %19 = load i8*, i8** %15, align 8, !dbg !326
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)), !dbg !327
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !328
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !329
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i32 0, i32 0), double* %12), !dbg !330
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !331
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !332
  %25 = load double, double* %12, align 8, !dbg !333
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i32 0, i32 0), double %25), !dbg !334
  %27 = load double, double* %12, align 8, !dbg !335
  %28 = call double @gsl_sf_log_erfc(double %27), !dbg !336
  store double %28, double* %13, align 8, !dbg !337
  %29 = load double, double* %13, align 8, !dbg !338
  %30 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), double %29), !dbg !339
  ret i32 0, !dbg !340
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal double @erfc8_sum(double) #0 !dbg !2 {
  %2 = load i32, i32* @__afl_prev_loc, !nosanitize !53
  %3 = load i8*, i8** @__afl_area_ptr, !nosanitize !53
  %4 = xor i32 %2, 21532
  %5 = getelementptr i8, i8* %3, i32 %4
  %6 = load i8, i8* %5, !nosanitize !53
  %7 = add i8 %6, 1
  store i8 %7, i8* %5, !nosanitize !53
  store i32 10766, i32* @__afl_prev_loc, !nosanitize !53
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca i32, align 4
  store double %0, double* %8, align 8
  call void @llvm.dbg.declare(metadata double* %8, metadata !341, metadata !DIExpression()), !dbg !342
  call void @llvm.dbg.declare(metadata double* %9, metadata !343, metadata !DIExpression()), !dbg !344
  store double 0.000000e+00, double* %9, align 8, !dbg !344
  call void @llvm.dbg.declare(metadata double* %10, metadata !345, metadata !DIExpression()), !dbg !346
  store double 0.000000e+00, double* %10, align 8, !dbg !346
  call void @llvm.dbg.declare(metadata i32* %11, metadata !347, metadata !DIExpression()), !dbg !348
  %12 = load double, double* getelementptr inbounds ([6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 5), align 8, !dbg !349
  store double %12, double* %9, align 8, !dbg !350
  store i32 4, i32* %11, align 4, !dbg !351
  br label %13, !dbg !353

; <label>:13:                                     ; preds = %37, %1
  %14 = load i32, i32* @__afl_prev_loc, !dbg !354, !nosanitize !53
  %15 = load i8*, i8** @__afl_area_ptr, !dbg !354, !nosanitize !53
  %16 = xor i32 %14, 26280, !dbg !354
  %17 = getelementptr i8, i8* %15, i32 %16, !dbg !354
  %18 = load i8, i8* %17, !dbg !354, !nosanitize !53
  %19 = add i8 %18, 1, !dbg !354
  store i8 %19, i8* %17, !dbg !354, !nosanitize !53
  store i32 13140, i32* @__afl_prev_loc, !dbg !354, !nosanitize !53
  %20 = load i32, i32* %11, align 4, !dbg !354
  %21 = icmp sge i32 %20, 0, !dbg !356
  br i1 %21, label %22, label %46, !dbg !357

; <label>:22:                                     ; preds = %13
  %23 = load i32, i32* @__afl_prev_loc, !dbg !358, !nosanitize !53
  %24 = load i8*, i8** @__afl_area_ptr, !dbg !358, !nosanitize !53
  %25 = xor i32 %23, 28042, !dbg !358
  %26 = getelementptr i8, i8* %24, i32 %25, !dbg !358
  %27 = load i8, i8* %26, !dbg !358, !nosanitize !53
  %28 = add i8 %27, 1, !dbg !358
  store i8 %28, i8* %26, !dbg !358, !nosanitize !53
  store i32 14021, i32* @__afl_prev_loc, !dbg !358, !nosanitize !53
  %29 = load double, double* %8, align 8, !dbg !358
  %30 = load double, double* %9, align 8, !dbg !360
  %31 = fmul double %29, %30, !dbg !361
  call void @DoubleErrBits(i32 25, double %31), !dbg !362
  call void @_show_Double(double %31), !dbg !362
  %32 = load i32, i32* %11, align 4, !dbg !362
  %33 = sext i32 %32 to i64, !dbg !363
  %34 = getelementptr inbounds [6 x double], [6 x double]* @erfc8_sum.P, i64 0, i64 %33, !dbg !363
  %35 = load double, double* %34, align 8, !dbg !363
  %36 = fadd double %31, %35, !dbg !364
  call void @DoubleErrBits(i32 30, double %36), !dbg !365
  call void @_show_Double(double %36), !dbg !365
  store double %36, double* %9, align 8, !dbg !365
  br label %37, !dbg !366

; <label>:37:                                     ; preds = %22
  %38 = load i32, i32* @__afl_prev_loc, !dbg !367, !nosanitize !53
  %39 = load i8*, i8** @__afl_area_ptr, !dbg !367, !nosanitize !53
  %40 = xor i32 %38, 21897, !dbg !367
  %41 = getelementptr i8, i8* %39, i32 %40, !dbg !367
  %42 = load i8, i8* %41, !dbg !367, !nosanitize !53
  %43 = add i8 %42, 1, !dbg !367
  store i8 %43, i8* %41, !dbg !367, !nosanitize !53
  store i32 10948, i32* @__afl_prev_loc, !dbg !367, !nosanitize !53
  %44 = load i32, i32* %11, align 4, !dbg !367
  %45 = add nsw i32 %44, -1, !dbg !367
  store i32 %45, i32* %11, align 4, !dbg !367
  br label %13, !dbg !368, !llvm.loop !369

; <label>:46:                                     ; preds = %13
  %47 = load i32, i32* @__afl_prev_loc, !dbg !371, !nosanitize !53
  %48 = load i8*, i8** @__afl_area_ptr, !dbg !371, !nosanitize !53
  %49 = xor i32 %47, 4960, !dbg !371
  %50 = getelementptr i8, i8* %48, i32 %49, !dbg !371
  %51 = load i8, i8* %50, !dbg !371, !nosanitize !53
  %52 = add i8 %51, 1, !dbg !371
  store i8 %52, i8* %50, !dbg !371, !nosanitize !53
  store i32 2480, i32* @__afl_prev_loc, !dbg !371, !nosanitize !53
  %53 = load double, double* getelementptr inbounds ([7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 6), align 16, !dbg !371
  store double %53, double* %10, align 8, !dbg !372
  store i32 5, i32* %11, align 4, !dbg !373
  br label %54, !dbg !375

; <label>:54:                                     ; preds = %78, %46
  %55 = load i32, i32* @__afl_prev_loc, !dbg !376, !nosanitize !53
  %56 = load i8*, i8** @__afl_area_ptr, !dbg !376, !nosanitize !53
  %57 = xor i32 %55, 64356, !dbg !376
  %58 = getelementptr i8, i8* %56, i32 %57, !dbg !376
  %59 = load i8, i8* %58, !dbg !376, !nosanitize !53
  %60 = add i8 %59, 1, !dbg !376
  store i8 %60, i8* %58, !dbg !376, !nosanitize !53
  store i32 32178, i32* @__afl_prev_loc, !dbg !376, !nosanitize !53
  %61 = load i32, i32* %11, align 4, !dbg !376
  %62 = icmp sge i32 %61, 0, !dbg !378
  br i1 %62, label %63, label %87, !dbg !379

; <label>:63:                                     ; preds = %54
  %64 = load i32, i32* @__afl_prev_loc, !dbg !380, !nosanitize !53
  %65 = load i8*, i8** @__afl_area_ptr, !dbg !380, !nosanitize !53
  %66 = xor i32 %64, 28464, !dbg !380
  %67 = getelementptr i8, i8* %65, i32 %66, !dbg !380
  %68 = load i8, i8* %67, !dbg !380, !nosanitize !53
  %69 = add i8 %68, 1, !dbg !380
  store i8 %69, i8* %67, !dbg !380, !nosanitize !53
  store i32 14232, i32* @__afl_prev_loc, !dbg !380, !nosanitize !53
  %70 = load double, double* %8, align 8, !dbg !380
  %71 = load double, double* %10, align 8, !dbg !382
  %72 = fmul double %70, %71, !dbg !383
  call void @DoubleErrBits(i32 66, double %72), !dbg !384
  call void @_show_Double(double %72), !dbg !384
  %73 = load i32, i32* %11, align 4, !dbg !384
  %74 = sext i32 %73 to i64, !dbg !385
  %75 = getelementptr inbounds [7 x double], [7 x double]* @erfc8_sum.Q, i64 0, i64 %74, !dbg !385
  %76 = load double, double* %75, align 8, !dbg !385
  %77 = fadd double %72, %76, !dbg !386
  call void @DoubleErrBits(i32 71, double %77), !dbg !387
  call void @_show_Double(double %77), !dbg !387
  store double %77, double* %10, align 8, !dbg !387
  br label %78, !dbg !388

; <label>:78:                                     ; preds = %63
  %79 = load i32, i32* @__afl_prev_loc, !dbg !389, !nosanitize !53
  %80 = load i8*, i8** @__afl_area_ptr, !dbg !389, !nosanitize !53
  %81 = xor i32 %79, 19002, !dbg !389
  %82 = getelementptr i8, i8* %80, i32 %81, !dbg !389
  %83 = load i8, i8* %82, !dbg !389, !nosanitize !53
  %84 = add i8 %83, 1, !dbg !389
  store i8 %84, i8* %82, !dbg !389, !nosanitize !53
  store i32 9501, i32* @__afl_prev_loc, !dbg !389, !nosanitize !53
  %85 = load i32, i32* %11, align 4, !dbg !389
  %86 = add nsw i32 %85, -1, !dbg !389
  store i32 %86, i32* %11, align 4, !dbg !389
  br label %54, !dbg !390, !llvm.loop !391

; <label>:87:                                     ; preds = %54
  %88 = load i32, i32* @__afl_prev_loc, !dbg !393, !nosanitize !53
  %89 = load i8*, i8** @__afl_area_ptr, !dbg !393, !nosanitize !53
  %90 = xor i32 %88, 55764, !dbg !393
  %91 = getelementptr i8, i8* %89, i32 %90, !dbg !393
  %92 = load i8, i8* %91, !dbg !393, !nosanitize !53
  %93 = add i8 %92, 1, !dbg !393
  store i8 %93, i8* %91, !dbg !393, !nosanitize !53
  store i32 27882, i32* @__afl_prev_loc, !dbg !393, !nosanitize !53
  %94 = load double, double* %9, align 8, !dbg !393
  %95 = load double, double* %10, align 8, !dbg !394
  %96 = fdiv double %94, %95, !dbg !395
  call void @DoubleDivErrBits(i32 90, double %95), !dbg !396
  call void @_show_DoubleDiv(double %94, double %95), !dbg !396
  ret double %96, !dbg !396
}

declare void @_show_Float(float)

declare void @_show_Double(double)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double)

declare void @DoubleErrBits(i32, double)

declare void @DoubleDivErrBits(i32, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!57, !58, !59}
!llvm.ident = !{!60}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "P", scope: !2, file: !3, line: 48, type: !54, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "erfc8_sum", scope: !3, file: !3, line: 43, type: !4, isLocal: true, isDefinition: true, scopeLine: 44, flags: DIFlagPrototyped, isOptimized: false, unit: !7, variables: !53)
!3 = !DIFile(filename: "erfc.c", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !6}
!6 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, globals: !47)
!8 = !{!9}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 39, size: 32, elements: !11)
!10 = !DIFile(filename: "./../gsl/gsl_errno.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46}
!12 = !DIEnumerator(name: "GSL_SUCCESS", value: 0)
!13 = !DIEnumerator(name: "GSL_FAILURE", value: -1)
!14 = !DIEnumerator(name: "GSL_CONTINUE", value: -2)
!15 = !DIEnumerator(name: "GSL_EDOM", value: 1)
!16 = !DIEnumerator(name: "GSL_ERANGE", value: 2)
!17 = !DIEnumerator(name: "GSL_EFAULT", value: 3)
!18 = !DIEnumerator(name: "GSL_EINVAL", value: 4)
!19 = !DIEnumerator(name: "GSL_EFAILED", value: 5)
!20 = !DIEnumerator(name: "GSL_EFACTOR", value: 6)
!21 = !DIEnumerator(name: "GSL_ESANITY", value: 7)
!22 = !DIEnumerator(name: "GSL_ENOMEM", value: 8)
!23 = !DIEnumerator(name: "GSL_EBADFUNC", value: 9)
!24 = !DIEnumerator(name: "GSL_ERUNAWAY", value: 10)
!25 = !DIEnumerator(name: "GSL_EMAXITER", value: 11)
!26 = !DIEnumerator(name: "GSL_EZERODIV", value: 12)
!27 = !DIEnumerator(name: "GSL_EBADTOL", value: 13)
!28 = !DIEnumerator(name: "GSL_ETOL", value: 14)
!29 = !DIEnumerator(name: "GSL_EUNDRFLW", value: 15)
!30 = !DIEnumerator(name: "GSL_EOVRFLW", value: 16)
!31 = !DIEnumerator(name: "GSL_ELOSS", value: 17)
!32 = !DIEnumerator(name: "GSL_EROUND", value: 18)
!33 = !DIEnumerator(name: "GSL_EBADLEN", value: 19)
!34 = !DIEnumerator(name: "GSL_ENOTSQR", value: 20)
!35 = !DIEnumerator(name: "GSL_ESING", value: 21)
!36 = !DIEnumerator(name: "GSL_EDIVERGE", value: 22)
!37 = !DIEnumerator(name: "GSL_EUNSUP", value: 23)
!38 = !DIEnumerator(name: "GSL_EUNIMPL", value: 24)
!39 = !DIEnumerator(name: "GSL_ECACHE", value: 25)
!40 = !DIEnumerator(name: "GSL_ETABLE", value: 26)
!41 = !DIEnumerator(name: "GSL_ENOPROG", value: 27)
!42 = !DIEnumerator(name: "GSL_ENOPROGJ", value: 28)
!43 = !DIEnumerator(name: "GSL_ETOLF", value: 29)
!44 = !DIEnumerator(name: "GSL_ETOLX", value: 30)
!45 = !DIEnumerator(name: "GSL_ETOLG", value: 31)
!46 = !DIEnumerator(name: "GSL_EOF", value: 32)
!47 = !{!0, !48}
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "Q", scope: !2, file: !3, line: 56, type: !50, isLocal: true, isDefinition: true)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 448, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 7)
!53 = !{}
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 384, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 6)
!57 = !{i32 2, !"Dwarf Version", i32 4}
!58 = !{i32 2, !"Debug Info Version", i32 3}
!59 = !{i32 1, !"wchar_size", i32 4}
!60 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!61 = distinct !DISubprogram(name: "gsl_sf_log_erfc_e", scope: !3, file: !3, line: 308, type: !62, isLocal: false, isDefinition: true, scopeLine: 309, flags: DIFlagPrototyped, isOptimized: false, unit: !7, variables: !53)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !6, !65}
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "gsl_sf_result", file: !67, line: 41, baseType: !68)
!67 = !DIFile(filename: "/usr/local/include/gsl/gsl_sf_result.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gsl_sf_result_struct", file: !67, line: 37, size: 128, elements: !69)
!69 = !{!70, !71}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !68, file: !67, line: 38, baseType: !6, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "err", scope: !68, file: !67, line: 39, baseType: !6, size: 64, offset: 64)
!72 = !DILocalVariable(name: "x", arg: 1, scope: !61, file: !3, line: 308, type: !6)
!73 = !DILocation(line: 308, column: 30, scope: !61)
!74 = !DILocalVariable(name: "result", arg: 2, scope: !61, file: !3, line: 308, type: !65)
!75 = !DILocation(line: 308, column: 49, scope: !61)
!76 = !DILocation(line: 312, column: 6, scope: !77)
!77 = distinct !DILexicalBlock(scope: !61, file: !3, line: 312, column: 6)
!78 = !DILocation(line: 312, column: 8, scope: !77)
!79 = !DILocation(line: 312, column: 7, scope: !77)
!80 = !DILocation(line: 312, column: 10, scope: !77)
!81 = !DILocation(line: 312, column: 6, scope: !61)
!82 = !DILocation(line: 313, column: 18, scope: !83)
!83 = distinct !DILexicalBlock(scope: !77, file: !3, line: 312, column: 40)
!84 = !DILocalVariable(name: "y", scope: !83, file: !3, line: 313, type: !85)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!86 = !DILocation(line: 313, column: 22, scope: !83)
!87 = !DILocation(line: 313, column: 24, scope: !83)
!88 = !DILocalVariable(name: "c3", scope: !83, file: !3, line: 315, type: !85)
!89 = !DILocation(line: 315, column: 18, scope: !83)
!90 = !DILocalVariable(name: "c4", scope: !83, file: !3, line: 316, type: !85)
!91 = !DILocation(line: 316, column: 18, scope: !83)
!92 = !DILocalVariable(name: "c5", scope: !83, file: !3, line: 317, type: !85)
!93 = !DILocation(line: 317, column: 18, scope: !83)
!94 = !DILocalVariable(name: "c6", scope: !83, file: !3, line: 318, type: !85)
!95 = !DILocation(line: 318, column: 18, scope: !83)
!96 = !DILocalVariable(name: "c7", scope: !83, file: !3, line: 319, type: !85)
!97 = !DILocation(line: 319, column: 18, scope: !83)
!98 = !DILocalVariable(name: "c8", scope: !83, file: !3, line: 320, type: !85)
!99 = !DILocation(line: 320, column: 18, scope: !83)
!100 = !DILocalVariable(name: "c9", scope: !83, file: !3, line: 321, type: !85)
!101 = !DILocation(line: 321, column: 18, scope: !83)
!102 = !DILocalVariable(name: "c10", scope: !83, file: !3, line: 322, type: !85)
!103 = !DILocation(line: 322, column: 18, scope: !83)
!104 = !DILocalVariable(name: "c11", scope: !83, file: !3, line: 323, type: !85)
!105 = !DILocation(line: 323, column: 18, scope: !83)
!106 = !DILocalVariable(name: "c12", scope: !83, file: !3, line: 324, type: !85)
!107 = !DILocation(line: 324, column: 18, scope: !83)
!108 = !DILocalVariable(name: "c13", scope: !83, file: !3, line: 325, type: !85)
!109 = !DILocation(line: 325, column: 18, scope: !83)
!110 = !DILocalVariable(name: "c14", scope: !83, file: !3, line: 326, type: !85)
!111 = !DILocation(line: 326, column: 18, scope: !83)
!112 = !DILocalVariable(name: "series", scope: !83, file: !3, line: 327, type: !6)
!113 = !DILocation(line: 327, column: 12, scope: !83)
!114 = !DILocation(line: 327, column: 26, scope: !83)
!115 = !DILocation(line: 327, column: 34, scope: !83)
!116 = !DILocation(line: 327, column: 43, scope: !83)
!117 = !DILocation(line: 327, column: 52, scope: !83)
!118 = !DILocation(line: 327, column: 61, scope: !83)
!119 = !DILocation(line: 327, column: 74, scope: !83)
!120 = !DILocation(line: 327, column: 73, scope: !83)
!121 = !DILocation(line: 327, column: 68, scope: !83)
!122 = !DILocation(line: 327, column: 62, scope: !83)
!123 = !DILocation(line: 327, column: 59, scope: !83)
!124 = !DILocation(line: 327, column: 53, scope: !83)
!125 = !DILocation(line: 327, column: 50, scope: !83)
!126 = !DILocation(line: 327, column: 44, scope: !83)
!127 = !DILocation(line: 327, column: 41, scope: !83)
!128 = !DILocation(line: 327, column: 35, scope: !83)
!129 = !DILocation(line: 327, column: 32, scope: !83)
!130 = !DILocation(line: 327, column: 27, scope: !83)
!131 = !DILocation(line: 327, column: 24, scope: !83)
!132 = !DILocation(line: 328, column: 14, scope: !83)
!133 = !DILocation(line: 328, column: 23, scope: !83)
!134 = !DILocation(line: 328, column: 32, scope: !83)
!135 = !DILocation(line: 328, column: 40, scope: !83)
!136 = !DILocation(line: 328, column: 48, scope: !83)
!137 = !DILocation(line: 328, column: 56, scope: !83)
!138 = !DILocation(line: 328, column: 64, scope: !83)
!139 = !DILocation(line: 328, column: 72, scope: !83)
!140 = !DILocation(line: 328, column: 74, scope: !83)
!141 = !DILocation(line: 328, column: 73, scope: !83)
!142 = !DILocation(line: 328, column: 70, scope: !83)
!143 = !DILocation(line: 328, column: 65, scope: !83)
!144 = !DILocation(line: 328, column: 62, scope: !83)
!145 = !DILocation(line: 328, column: 57, scope: !83)
!146 = !DILocation(line: 328, column: 54, scope: !83)
!147 = !DILocation(line: 328, column: 49, scope: !83)
!148 = !DILocation(line: 328, column: 46, scope: !83)
!149 = !DILocation(line: 328, column: 41, scope: !83)
!150 = !DILocation(line: 328, column: 38, scope: !83)
!151 = !DILocation(line: 328, column: 33, scope: !83)
!152 = !DILocation(line: 328, column: 30, scope: !83)
!153 = !DILocation(line: 328, column: 24, scope: !83)
!154 = !DILocation(line: 328, column: 21, scope: !83)
!155 = !DILocation(line: 328, column: 15, scope: !83)
!156 = !DILocation(line: 328, column: 12, scope: !83)
!157 = !DILocation(line: 329, column: 26, scope: !83)
!158 = !DILocation(line: 329, column: 24, scope: !83)
!159 = !DILocation(line: 329, column: 5, scope: !83)
!160 = !DILocation(line: 329, column: 13, scope: !83)
!161 = !DILocation(line: 329, column: 17, scope: !83)
!162 = !DILocation(line: 330, column: 48, scope: !83)
!163 = !DILocation(line: 330, column: 56, scope: !83)
!164 = !DILocation(line: 330, column: 43, scope: !83)
!165 = !DILocation(line: 330, column: 41, scope: !83)
!166 = !DILocation(line: 330, column: 5, scope: !83)
!167 = !DILocation(line: 330, column: 13, scope: !83)
!168 = !DILocation(line: 330, column: 17, scope: !83)
!169 = !DILocation(line: 331, column: 5, scope: !83)
!170 = !DILocation(line: 343, column: 11, scope: !171)
!171 = distinct !DILexicalBlock(scope: !77, file: !3, line: 343, column: 11)
!172 = !DILocation(line: 343, column: 13, scope: !171)
!173 = !DILocation(line: 343, column: 11, scope: !77)
!174 = !DILocation(line: 344, column: 29, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !3, line: 343, column: 20)
!176 = !DILocation(line: 344, column: 19, scope: !175)
!177 = !DILocation(line: 344, column: 5, scope: !175)
!178 = !DILocation(line: 344, column: 13, scope: !175)
!179 = !DILocation(line: 344, column: 17, scope: !175)
!180 = !DILocation(line: 345, column: 48, scope: !175)
!181 = !DILocation(line: 345, column: 56, scope: !175)
!182 = !DILocation(line: 345, column: 43, scope: !175)
!183 = !DILocation(line: 345, column: 41, scope: !175)
!184 = !DILocation(line: 345, column: 5, scope: !175)
!185 = !DILocation(line: 345, column: 13, scope: !175)
!186 = !DILocation(line: 345, column: 17, scope: !175)
!187 = !DILocation(line: 346, column: 5, scope: !175)
!188 = !DILocation(line: 349, column: 19, scope: !189)
!189 = distinct !DILexicalBlock(scope: !171, file: !3, line: 348, column: 8)
!190 = !DILocalVariable(name: "result_erfc", scope: !189, file: !3, line: 349, type: !66)
!191 = !DILocation(line: 350, column: 19, scope: !189)
!192 = !DILocation(line: 350, column: 5, scope: !189)
!193 = !DILocation(line: 351, column: 36, scope: !189)
!194 = !DILocation(line: 351, column: 20, scope: !189)
!195 = !DILocation(line: 351, column: 5, scope: !189)
!196 = !DILocation(line: 351, column: 13, scope: !189)
!197 = !DILocation(line: 351, column: 18, scope: !189)
!198 = !DILocation(line: 352, column: 37, scope: !189)
!199 = !DILocation(line: 352, column: 55, scope: !189)
!200 = !DILocation(line: 352, column: 41, scope: !189)
!201 = !DILocation(line: 352, column: 20, scope: !189)
!202 = !DILocation(line: 352, column: 5, scope: !189)
!203 = !DILocation(line: 352, column: 13, scope: !189)
!204 = !DILocation(line: 352, column: 18, scope: !189)
!205 = !DILocation(line: 353, column: 49, scope: !189)
!206 = !DILocation(line: 353, column: 57, scope: !189)
!207 = !DILocation(line: 353, column: 44, scope: !189)
!208 = !DILocation(line: 353, column: 42, scope: !189)
!209 = !DILocation(line: 353, column: 5, scope: !189)
!210 = !DILocation(line: 353, column: 13, scope: !189)
!211 = !DILocation(line: 353, column: 17, scope: !189)
!212 = !DILocation(line: 354, column: 5, scope: !189)
!213 = !DILocation(line: 356, column: 1, scope: !61)
!214 = distinct !DISubprogram(name: "log_erfc8", scope: !3, file: !3, line: 90, type: !4, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: false, unit: !7, variables: !53)
!215 = !DILocalVariable(name: "x", arg: 1, scope: !214, file: !3, line: 90, type: !6)
!216 = !DILocation(line: 90, column: 32, scope: !214)
!217 = !DILocalVariable(name: "e", scope: !214, file: !3, line: 92, type: !6)
!218 = !DILocation(line: 92, column: 10, scope: !214)
!219 = !DILocation(line: 93, column: 17, scope: !214)
!220 = !DILocation(line: 93, column: 7, scope: !214)
!221 = !DILocation(line: 93, column: 5, scope: !214)
!222 = !DILocation(line: 94, column: 11, scope: !214)
!223 = !DILocation(line: 94, column: 7, scope: !214)
!224 = !DILocation(line: 94, column: 16, scope: !214)
!225 = !DILocation(line: 94, column: 18, scope: !214)
!226 = !DILocation(line: 94, column: 17, scope: !214)
!227 = !DILocation(line: 94, column: 14, scope: !214)
!228 = !DILocation(line: 94, column: 5, scope: !214)
!229 = !DILocation(line: 95, column: 10, scope: !214)
!230 = !DILocation(line: 95, column: 3, scope: !214)
!231 = distinct !DISubprogram(name: "gsl_sf_log_erfc", scope: !3, file: !3, line: 383, type: !4, isLocal: false, isDefinition: true, scopeLine: 384, flags: DIFlagPrototyped, isOptimized: false, unit: !7, variables: !53)
!232 = !DILocalVariable(name: "x", arg: 1, scope: !231, file: !3, line: 383, type: !6)
!233 = !DILocation(line: 383, column: 31, scope: !231)
!234 = !DILocalVariable(name: "result", scope: !231, file: !3, line: 385, type: !66)
!235 = !DILocation(line: 385, column: 3, scope: !231)
!236 = !DILocalVariable(name: "status", scope: !231, file: !3, line: 385, type: !64)
!237 = !DILocation(line: 385, column: 3, scope: !238)
!238 = distinct !DILexicalBlock(scope: !231, file: !3, line: 385, column: 3)
!239 = !DILocation(line: 385, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !238, file: !3, line: 385, column: 3)
!241 = distinct !{!241, !239, !239}
!242 = !DILocation(line: 385, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 385, column: 3)
!244 = !DILocation(line: 386, column: 1, scope: !231)
!245 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 389, type: !246, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: false, unit: !7, variables: !53)
!246 = !DISubroutineType(types: !247)
!247 = !{!64, !64, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!251 = !DILocalVariable(name: "argc", arg: 1, scope: !245, file: !3, line: 389, type: !64)
!252 = !DILocation(line: 389, column: 14, scope: !245)
!253 = !DILocalVariable(name: "argv", arg: 2, scope: !245, file: !3, line: 389, type: !248)
!254 = !DILocation(line: 389, column: 27, scope: !245)
!255 = !DILocalVariable(name: "a", scope: !245, file: !3, line: 391, type: !6)
!256 = !DILocation(line: 391, column: 12, scope: !245)
!257 = !DILocalVariable(name: "b", scope: !245, file: !3, line: 391, type: !6)
!258 = !DILocation(line: 391, column: 15, scope: !245)
!259 = !DILocalVariable(name: "fp", scope: !245, file: !3, line: 392, type: !260)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !262, line: 7, baseType: !263)
!262 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !264, line: 49, size: 1728, elements: !265)
!264 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!265 = !{!266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !281, !283, !284, !285, !289, !291, !293, !297, !300, !302, !305, !308, !309, !311, !315, !316}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !263, file: !264, line: 51, baseType: !64, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !263, file: !264, line: 54, baseType: !249, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !263, file: !264, line: 55, baseType: !249, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !263, file: !264, line: 56, baseType: !249, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !263, file: !264, line: 57, baseType: !249, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !263, file: !264, line: 58, baseType: !249, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !263, file: !264, line: 59, baseType: !249, size: 64, offset: 384)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !263, file: !264, line: 60, baseType: !249, size: 64, offset: 448)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !263, file: !264, line: 61, baseType: !249, size: 64, offset: 512)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !263, file: !264, line: 64, baseType: !249, size: 64, offset: 576)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !263, file: !264, line: 65, baseType: !249, size: 64, offset: 640)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !263, file: !264, line: 66, baseType: !249, size: 64, offset: 704)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !263, file: !264, line: 68, baseType: !279, size: 64, offset: 768)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !264, line: 36, flags: DIFlagFwdDecl)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !263, file: !264, line: 70, baseType: !282, size: 64, offset: 832)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !263, file: !264, line: 72, baseType: !64, size: 32, offset: 896)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !263, file: !264, line: 73, baseType: !64, size: 32, offset: 928)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !263, file: !264, line: 74, baseType: !286, size: 64, offset: 960)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !287, line: 152, baseType: !288)
!287 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!288 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !263, file: !264, line: 77, baseType: !290, size: 16, offset: 1024)
!290 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !263, file: !264, line: 78, baseType: !292, size: 8, offset: 1040)
!292 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !263, file: !264, line: 79, baseType: !294, size: 8, offset: 1048)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 8, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 1)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !263, file: !264, line: 81, baseType: !298, size: 64, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !264, line: 43, baseType: null)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !263, file: !264, line: 89, baseType: !301, size: 64, offset: 1152)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !287, line: 153, baseType: !288)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !263, file: !264, line: 91, baseType: !303, size: 64, offset: 1216)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !264, line: 37, flags: DIFlagFwdDecl)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !263, file: !264, line: 92, baseType: !306, size: 64, offset: 1280)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !264, line: 38, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !263, file: !264, line: 93, baseType: !282, size: 64, offset: 1344)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !263, file: !264, line: 94, baseType: !310, size: 64, offset: 1408)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !263, file: !264, line: 95, baseType: !312, size: 64, offset: 1472)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !313, line: 62, baseType: !314)
!313 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/benchmark/gsl-2.6/specfunc")
!314 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !263, file: !264, line: 96, baseType: !64, size: 32, offset: 1536)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !263, file: !264, line: 98, baseType: !317, size: 160, offset: 1568)
!317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 160, elements: !318)
!318 = !{!319}
!319 = !DISubrange(count: 20)
!320 = !DILocation(line: 392, column: 11, scope: !245)
!321 = !DILocalVariable(name: "filename", scope: !245, file: !3, line: 393, type: !322)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!324 = !DILocation(line: 393, column: 17, scope: !245)
!325 = !DILocation(line: 393, column: 28, scope: !245)
!326 = !DILocation(line: 394, column: 16, scope: !245)
!327 = !DILocation(line: 394, column: 10, scope: !245)
!328 = !DILocation(line: 394, column: 8, scope: !245)
!329 = !DILocation(line: 395, column: 12, scope: !245)
!330 = !DILocation(line: 395, column: 5, scope: !245)
!331 = !DILocation(line: 396, column: 12, scope: !245)
!332 = !DILocation(line: 396, column: 5, scope: !245)
!333 = !DILocation(line: 398, column: 24, scope: !245)
!334 = !DILocation(line: 398, column: 5, scope: !245)
!335 = !DILocation(line: 400, column: 25, scope: !245)
!336 = !DILocation(line: 400, column: 9, scope: !245)
!337 = !DILocation(line: 400, column: 7, scope: !245)
!338 = !DILocation(line: 403, column: 39, scope: !245)
!339 = !DILocation(line: 403, column: 5, scope: !245)
!340 = !DILocation(line: 405, column: 5, scope: !245)
!341 = !DILocalVariable(name: "x", arg: 1, scope: !2, file: !3, line: 43, type: !6)
!342 = !DILocation(line: 43, column: 32, scope: !2)
!343 = !DILocalVariable(name: "num", scope: !2, file: !3, line: 65, type: !6)
!344 = !DILocation(line: 65, column: 10, scope: !2)
!345 = !DILocalVariable(name: "den", scope: !2, file: !3, line: 65, type: !6)
!346 = !DILocation(line: 65, column: 19, scope: !2)
!347 = !DILocalVariable(name: "i", scope: !2, file: !3, line: 66, type: !64)
!348 = !DILocation(line: 66, column: 7, scope: !2)
!349 = !DILocation(line: 68, column: 9, scope: !2)
!350 = !DILocation(line: 68, column: 7, scope: !2)
!351 = !DILocation(line: 69, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !2, file: !3, line: 69, column: 3)
!353 = !DILocation(line: 69, column: 8, scope: !352)
!354 = !DILocation(line: 69, column: 13, scope: !355)
!355 = distinct !DILexicalBlock(scope: !352, file: !3, line: 69, column: 3)
!356 = !DILocation(line: 69, column: 14, scope: !355)
!357 = !DILocation(line: 69, column: 3, scope: !352)
!358 = !DILocation(line: 70, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !355, file: !3, line: 69, column: 24)
!360 = !DILocation(line: 70, column: 15, scope: !359)
!361 = !DILocation(line: 70, column: 14, scope: !359)
!362 = !DILocation(line: 70, column: 23, scope: !359)
!363 = !DILocation(line: 70, column: 21, scope: !359)
!364 = !DILocation(line: 70, column: 19, scope: !359)
!365 = !DILocation(line: 70, column: 11, scope: !359)
!366 = !DILocation(line: 71, column: 3, scope: !359)
!367 = !DILocation(line: 69, column: 19, scope: !355)
!368 = !DILocation(line: 69, column: 3, scope: !355)
!369 = distinct !{!369, !357, !370}
!370 = !DILocation(line: 71, column: 3, scope: !352)
!371 = !DILocation(line: 72, column: 9, scope: !2)
!372 = !DILocation(line: 72, column: 7, scope: !2)
!373 = !DILocation(line: 73, column: 9, scope: !374)
!374 = distinct !DILexicalBlock(scope: !2, file: !3, line: 73, column: 3)
!375 = !DILocation(line: 73, column: 8, scope: !374)
!376 = !DILocation(line: 73, column: 13, scope: !377)
!377 = distinct !DILexicalBlock(scope: !374, file: !3, line: 73, column: 3)
!378 = !DILocation(line: 73, column: 14, scope: !377)
!379 = !DILocation(line: 73, column: 3, scope: !374)
!380 = !DILocation(line: 74, column: 13, scope: !381)
!381 = distinct !DILexicalBlock(scope: !377, file: !3, line: 73, column: 24)
!382 = !DILocation(line: 74, column: 15, scope: !381)
!383 = !DILocation(line: 74, column: 14, scope: !381)
!384 = !DILocation(line: 74, column: 23, scope: !381)
!385 = !DILocation(line: 74, column: 21, scope: !381)
!386 = !DILocation(line: 74, column: 19, scope: !381)
!387 = !DILocation(line: 74, column: 11, scope: !381)
!388 = !DILocation(line: 75, column: 3, scope: !381)
!389 = !DILocation(line: 73, column: 19, scope: !377)
!390 = !DILocation(line: 73, column: 3, scope: !377)
!391 = distinct !{!391, !379, !392}
!392 = !DILocation(line: 75, column: 3, scope: !374)
!393 = !DILocation(line: 77, column: 10, scope: !2)
!394 = !DILocation(line: 77, column: 14, scope: !2)
!395 = !DILocation(line: 77, column: 13, scope: !2)
!396 = !DILocation(line: 77, column: 3, scope: !2)
