; ModuleID = 'test3.c'
source_filename = "test3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"The Value of result is %f\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !7 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !2
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !2
  %5 = xor i32 %3, 48108
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !2
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !2
  store i32 24054, i32* @__afl_prev_loc, !nosanitize !2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata double* %12, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata double* %13, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata double* %14, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %15, metadata !25, metadata !DIExpression()), !dbg !86
  store %struct._IO_FILE* null, %struct._IO_FILE** %15, align 8, !dbg !86
  call void @llvm.dbg.declare(metadata i8** %16, metadata !87, metadata !DIExpression()), !dbg !90
  %17 = load i8**, i8*** %11, align 8, !dbg !91
  %18 = getelementptr inbounds i8*, i8** %17, i64 1, !dbg !91
  %19 = load i8*, i8** %18, align 8, !dbg !91
  store i8* %19, i8** %16, align 8, !dbg !90
  %20 = load i8*, i8** %16, align 8, !dbg !92
  %21 = call %struct._IO_FILE* @fopen(i8* %20, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !93
  store %struct._IO_FILE* %21, %struct._IO_FILE** %15, align 8, !dbg !94
  %22 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !95
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %13), !dbg !96
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !97
  %25 = call i32 @fclose(%struct._IO_FILE* %24), !dbg !98
  %26 = load double, double* %13, align 8, !dbg !99
  %27 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), double %26), !dbg !100
  store double 1.000000e+00, double* %12, align 8, !dbg !101
  %28 = load double, double* %12, align 8, !dbg !102
  %29 = load double, double* %13, align 8, !dbg !104
  %30 = fcmp ogt double %28, %29, !dbg !105
  br i1 %30, label %31, label %155, !dbg !106

; <label>:31:                                     ; preds = %2
  %32 = load i32, i32* @__afl_prev_loc, !dbg !107, !nosanitize !2
  %33 = load i8*, i8** @__afl_area_ptr, !dbg !107, !nosanitize !2
  %34 = xor i32 %32, 18725, !dbg !107
  %35 = getelementptr i8, i8* %33, i32 %34, !dbg !107
  %36 = load i8, i8* %35, !dbg !107, !nosanitize !2
  %37 = add i8 %36, 1, !dbg !107
  store i8 %37, i8* %35, !dbg !107, !nosanitize !2
  store i32 9362, i32* @__afl_prev_loc, !dbg !107, !nosanitize !2
  %38 = load double, double* %13, align 8, !dbg !107
  %39 = fcmp olt double %38, 4.195920e-01, !dbg !110
  br i1 %39, label %40, label %148, !dbg !111

; <label>:40:                                     ; preds = %31
  %41 = load i32, i32* @__afl_prev_loc, !dbg !112, !nosanitize !2
  %42 = load i8*, i8** @__afl_area_ptr, !dbg !112, !nosanitize !2
  %43 = xor i32 %41, 11629, !dbg !112
  %44 = getelementptr i8, i8* %42, i32 %43, !dbg !112
  %45 = load i8, i8* %44, !dbg !112, !nosanitize !2
  %46 = add i8 %45, 1, !dbg !112
  store i8 %46, i8* %44, !dbg !112, !nosanitize !2
  store i32 5814, i32* @__afl_prev_loc, !dbg !112, !nosanitize !2
  %47 = load double, double* %13, align 8, !dbg !112
  %48 = fcmp olt double %47, 2.381220e-01, !dbg !115
  br i1 %48, label %49, label %141, !dbg !116

; <label>:49:                                     ; preds = %40
  %50 = load i32, i32* @__afl_prev_loc, !dbg !117, !nosanitize !2
  %51 = load i8*, i8** @__afl_area_ptr, !dbg !117, !nosanitize !2
  %52 = xor i32 %50, 1002, !dbg !117
  %53 = getelementptr i8, i8* %51, i32 %52, !dbg !117
  %54 = load i8, i8* %53, !dbg !117, !nosanitize !2
  %55 = add i8 %54, 1, !dbg !117
  store i8 %55, i8* %53, !dbg !117, !nosanitize !2
  store i32 501, i32* @__afl_prev_loc, !dbg !117, !nosanitize !2
  %56 = load double, double* %13, align 8, !dbg !117
  %57 = fcmp olt double %56, 1.491400e-02, !dbg !120
  br i1 %57, label %58, label %134, !dbg !121

; <label>:58:                                     ; preds = %49
  %59 = load i32, i32* @__afl_prev_loc, !dbg !122, !nosanitize !2
  %60 = load i8*, i8** @__afl_area_ptr, !dbg !122, !nosanitize !2
  %61 = xor i32 %59, 36169, !dbg !122
  %62 = getelementptr i8, i8* %60, i32 %61, !dbg !122
  %63 = load i8, i8* %62, !dbg !122, !nosanitize !2
  %64 = add i8 %63, 1, !dbg !122
  store i8 %64, i8* %62, !dbg !122, !nosanitize !2
  store i32 18084, i32* @__afl_prev_loc, !dbg !122, !nosanitize !2
  %65 = load double, double* %13, align 8, !dbg !122
  %66 = fcmp olt double %65, 1.500000e-03, !dbg !125
  br i1 %66, label %67, label %127, !dbg !126

; <label>:67:                                     ; preds = %58
  %68 = load i32, i32* @__afl_prev_loc, !dbg !127, !nosanitize !2
  %69 = load i8*, i8** @__afl_area_ptr, !dbg !127, !nosanitize !2
  %70 = xor i32 %68, 47511, !dbg !127
  %71 = getelementptr i8, i8* %69, i32 %70, !dbg !127
  %72 = load i8, i8* %71, !dbg !127, !nosanitize !2
  %73 = add i8 %72, 1, !dbg !127
  store i8 %73, i8* %71, !dbg !127, !nosanitize !2
  store i32 23755, i32* @__afl_prev_loc, !dbg !127, !nosanitize !2
  %74 = load double, double* %13, align 8, !dbg !127
  %75 = fcmp olt double %74, 1.500000e-04, !dbg !130
  br i1 %75, label %76, label %120, !dbg !131

; <label>:76:                                     ; preds = %67
  %77 = load i32, i32* @__afl_prev_loc, !dbg !132, !nosanitize !2
  %78 = load i8*, i8** @__afl_area_ptr, !dbg !132, !nosanitize !2
  %79 = xor i32 %77, 56605, !dbg !132
  %80 = getelementptr i8, i8* %78, i32 %79, !dbg !132
  %81 = load i8, i8* %80, !dbg !132, !nosanitize !2
  %82 = add i8 %81, 1, !dbg !132
  store i8 %82, i8* %80, !dbg !132, !nosanitize !2
  store i32 28302, i32* @__afl_prev_loc, !dbg !132, !nosanitize !2
  %83 = load double, double* %13, align 8, !dbg !132
  %84 = fcmp olt double %83, 1.500000e-05, !dbg !135
  br i1 %84, label %85, label %113, !dbg !136

; <label>:85:                                     ; preds = %76
  %86 = load i32, i32* @__afl_prev_loc, !dbg !137, !nosanitize !2
  %87 = load i8*, i8** @__afl_area_ptr, !dbg !137, !nosanitize !2
  %88 = xor i32 %86, 24762, !dbg !137
  %89 = getelementptr i8, i8* %87, i32 %88, !dbg !137
  %90 = load i8, i8* %89, !dbg !137, !nosanitize !2
  %91 = add i8 %90, 1, !dbg !137
  store i8 %91, i8* %89, !dbg !137, !nosanitize !2
  store i32 12381, i32* @__afl_prev_loc, !dbg !137, !nosanitize !2
  %92 = load double, double* %13, align 8, !dbg !137
  %93 = fcmp olt double %92, 1.050000e-05, !dbg !140
  br i1 %93, label %94, label %106, !dbg !141

; <label>:94:                                     ; preds = %85
  %95 = load i32, i32* @__afl_prev_loc, !dbg !142, !nosanitize !2
  %96 = load i8*, i8** @__afl_area_ptr, !dbg !142, !nosanitize !2
  %97 = xor i32 %95, 37917, !dbg !142
  %98 = getelementptr i8, i8* %96, i32 %97, !dbg !142
  %99 = load i8, i8* %98, !dbg !142, !nosanitize !2
  %100 = add i8 %99, 1, !dbg !142
  store i8 %100, i8* %98, !dbg !142, !nosanitize !2
  store i32 18958, i32* @__afl_prev_loc, !dbg !142, !nosanitize !2
  %101 = load double, double* %12, align 8, !dbg !142
  %102 = load double, double* %13, align 8, !dbg !143
  %103 = load double, double* %13, align 8, !dbg !144
  %104 = fsub double %102, %103, !dbg !145
  call void @DoubleErrBits(i32 98, double %104), !dbg !146
  call void @_show_Double(double %104), !dbg !146
  %105 = fdiv double %101, %104, !dbg !146
  call void @DoubleDivErrBits(i32 99, double %104), !dbg !147
  call void @_show_DoubleDiv(double %101, double %104), !dbg !147
  store double %105, double* %12, align 8, !dbg !147
  br label %106, !dbg !148

; <label>:106:                                    ; preds = %94, %85
  %107 = load i32, i32* @__afl_prev_loc, !dbg !149, !nosanitize !2
  %108 = load i8*, i8** @__afl_area_ptr, !dbg !149, !nosanitize !2
  %109 = xor i32 %107, 62052, !dbg !149
  %110 = getelementptr i8, i8* %108, i32 %109, !dbg !149
  %111 = load i8, i8* %110, !dbg !149, !nosanitize !2
  %112 = add i8 %111, 1, !dbg !149
  store i8 %112, i8* %110, !dbg !149, !nosanitize !2
  store i32 31026, i32* @__afl_prev_loc, !dbg !149, !nosanitize !2
  br label %113, !dbg !149

; <label>:113:                                    ; preds = %106, %76
  %114 = load i32, i32* @__afl_prev_loc, !dbg !150, !nosanitize !2
  %115 = load i8*, i8** @__afl_area_ptr, !dbg !150, !nosanitize !2
  %116 = xor i32 %114, 2761, !dbg !150
  %117 = getelementptr i8, i8* %115, i32 %116, !dbg !150
  %118 = load i8, i8* %117, !dbg !150, !nosanitize !2
  %119 = add i8 %118, 1, !dbg !150
  store i8 %119, i8* %117, !dbg !150, !nosanitize !2
  store i32 1380, i32* @__afl_prev_loc, !dbg !150, !nosanitize !2
  br label %120, !dbg !150

; <label>:120:                                    ; preds = %113, %67
  %121 = load i32, i32* @__afl_prev_loc, !dbg !151, !nosanitize !2
  %122 = load i8*, i8** @__afl_area_ptr, !dbg !151, !nosanitize !2
  %123 = xor i32 %121, 48193, !dbg !151
  %124 = getelementptr i8, i8* %122, i32 %123, !dbg !151
  %125 = load i8, i8* %124, !dbg !151, !nosanitize !2
  %126 = add i8 %125, 1, !dbg !151
  store i8 %126, i8* %124, !dbg !151, !nosanitize !2
  store i32 24096, i32* @__afl_prev_loc, !dbg !151, !nosanitize !2
  br label %127, !dbg !151

; <label>:127:                                    ; preds = %120, %58
  %128 = load i32, i32* @__afl_prev_loc, !dbg !152, !nosanitize !2
  %129 = load i8*, i8** @__afl_area_ptr, !dbg !152, !nosanitize !2
  %130 = xor i32 %128, 15558, !dbg !152
  %131 = getelementptr i8, i8* %129, i32 %130, !dbg !152
  %132 = load i8, i8* %131, !dbg !152, !nosanitize !2
  %133 = add i8 %132, 1, !dbg !152
  store i8 %133, i8* %131, !dbg !152, !nosanitize !2
  store i32 7779, i32* @__afl_prev_loc, !dbg !152, !nosanitize !2
  br label %134, !dbg !152

; <label>:134:                                    ; preds = %127, %49
  %135 = load i32, i32* @__afl_prev_loc, !dbg !153, !nosanitize !2
  %136 = load i8*, i8** @__afl_area_ptr, !dbg !153, !nosanitize !2
  %137 = xor i32 %135, 50276, !dbg !153
  %138 = getelementptr i8, i8* %136, i32 %137, !dbg !153
  %139 = load i8, i8* %138, !dbg !153, !nosanitize !2
  %140 = add i8 %139, 1, !dbg !153
  store i8 %140, i8* %138, !dbg !153, !nosanitize !2
  store i32 25138, i32* @__afl_prev_loc, !dbg !153, !nosanitize !2
  br label %141, !dbg !153

; <label>:141:                                    ; preds = %134, %40
  %142 = load i32, i32* @__afl_prev_loc, !dbg !154, !nosanitize !2
  %143 = load i8*, i8** @__afl_area_ptr, !dbg !154, !nosanitize !2
  %144 = xor i32 %142, 26537, !dbg !154
  %145 = getelementptr i8, i8* %143, i32 %144, !dbg !154
  %146 = load i8, i8* %145, !dbg !154, !nosanitize !2
  %147 = add i8 %146, 1, !dbg !154
  store i8 %147, i8* %145, !dbg !154, !nosanitize !2
  store i32 13268, i32* @__afl_prev_loc, !dbg !154, !nosanitize !2
  br label %148, !dbg !154

; <label>:148:                                    ; preds = %141, %31
  %149 = load i32, i32* @__afl_prev_loc, !dbg !155, !nosanitize !2
  %150 = load i8*, i8** @__afl_area_ptr, !dbg !155, !nosanitize !2
  %151 = xor i32 %149, 38286, !dbg !155
  %152 = getelementptr i8, i8* %150, i32 %151, !dbg !155
  %153 = load i8, i8* %152, !dbg !155, !nosanitize !2
  %154 = add i8 %153, 1, !dbg !155
  store i8 %154, i8* %152, !dbg !155, !nosanitize !2
  store i32 19143, i32* @__afl_prev_loc, !dbg !155, !nosanitize !2
  br label %169, !dbg !155

; <label>:155:                                    ; preds = %2
  %156 = load i32, i32* @__afl_prev_loc, !dbg !156, !nosanitize !2
  %157 = load i8*, i8** @__afl_area_ptr, !dbg !156, !nosanitize !2
  %158 = xor i32 %156, 56788, !dbg !156
  %159 = getelementptr i8, i8* %157, i32 %158, !dbg !156
  %160 = load i8, i8* %159, !dbg !156, !nosanitize !2
  %161 = add i8 %160, 1, !dbg !156
  store i8 %161, i8* %159, !dbg !156, !nosanitize !2
  store i32 28394, i32* @__afl_prev_loc, !dbg !156, !nosanitize !2
  %162 = load double, double* %12, align 8, !dbg !156
  %163 = load double, double* %13, align 8, !dbg !158
  %164 = load double, double* %12, align 8, !dbg !159
  %165 = load double, double* %13, align 8, !dbg !160
  %166 = fdiv double %164, %165, !dbg !161
  call void @DoubleDivErrBits(i32 160, double %165), !dbg !162
  call void @_show_DoubleDiv(double %164, double %165), !dbg !162
  %167 = fmul double %163, %166, !dbg !162
  call void @DoubleErrBits(i32 161, double %167), !dbg !163
  call void @_show_Double(double %167), !dbg !163
  %168 = fadd double %162, %167, !dbg !163
  call void @DoubleErrBits(i32 162, double %168), !dbg !164
  call void @_show_Double(double %168), !dbg !164
  store double %168, double* %12, align 8, !dbg !164
  br label %169

; <label>:169:                                    ; preds = %155, %148
  %170 = load i32, i32* @__afl_prev_loc, !dbg !165, !nosanitize !2
  %171 = load i8*, i8** @__afl_area_ptr, !dbg !165, !nosanitize !2
  %172 = xor i32 %170, 15457, !dbg !165
  %173 = getelementptr i8, i8* %171, i32 %172, !dbg !165
  %174 = load i8, i8* %173, !dbg !165, !nosanitize !2
  %175 = add i8 %174, 1, !dbg !165
  store i8 %175, i8* %173, !dbg !165, !nosanitize !2
  store i32 7728, i32* @__afl_prev_loc, !dbg !165, !nosanitize !2
  %176 = load double, double* %12, align 8, !dbg !165
  %177 = load double, double* %12, align 8, !dbg !166
  %178 = load double, double* %13, align 8, !dbg !167
  %179 = load double, double* %12, align 8, !dbg !168
  %180 = fmul double %178, %179, !dbg !169
  call void @DoubleErrBits(i32 174, double %180), !dbg !170
  call void @_show_Double(double %180), !dbg !170
  %181 = fdiv double %177, %180, !dbg !170
  call void @DoubleDivErrBits(i32 175, double %180), !dbg !171
  call void @_show_DoubleDiv(double %177, double %180), !dbg !171
  %182 = fadd double %176, %181, !dbg !171
  call void @DoubleErrBits(i32 176, double %182), !dbg !172
  call void @_show_Double(double %182), !dbg !172
  store double %182, double* %14, align 8, !dbg !172
  %183 = load double, double* %14, align 8, !dbg !173
  %184 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %183), !dbg !174
  ret i32 0, !dbg !175
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

declare void @_show_Float(float)

declare void @_show_Double(double)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double)

declare void @DoubleErrBits(i32, double)

declare void @DoubleDivErrBits(i32, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "test3.c", directory: "/home/savcuda/Desktop/FloatFuz/tests/test3")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !8, isLocal: false, isDefinition: true, scopeLine: 8, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 7, type: !10)
!15 = !DILocation(line: 7, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 7, type: !11)
!17 = !DILocation(line: 7, column: 27, scope: !7)
!18 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 9, type: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DILocation(line: 9, column: 12, scope: !7)
!21 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 9, type: !19)
!22 = !DILocation(line: 9, column: 15, scope: !7)
!23 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 9, type: !19)
!24 = !DILocation(line: 9, column: 18, scope: !7)
!25 = !DILocalVariable(name: "fp", scope: !7, file: !1, line: 10, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !28, line: 7, baseType: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test3")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !30, line: 49, size: 1728, elements: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test3")
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !47, !49, !50, !51, !55, !57, !59, !63, !66, !68, !71, !74, !75, !77, !81, !82}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !30, line: 51, baseType: !10, size: 32)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !29, file: !30, line: 54, baseType: !12, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !29, file: !30, line: 55, baseType: !12, size: 64, offset: 128)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !29, file: !30, line: 56, baseType: !12, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !29, file: !30, line: 57, baseType: !12, size: 64, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !29, file: !30, line: 58, baseType: !12, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !29, file: !30, line: 59, baseType: !12, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !29, file: !30, line: 60, baseType: !12, size: 64, offset: 448)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !29, file: !30, line: 61, baseType: !12, size: 64, offset: 512)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !29, file: !30, line: 64, baseType: !12, size: 64, offset: 576)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !29, file: !30, line: 65, baseType: !12, size: 64, offset: 640)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !29, file: !30, line: 66, baseType: !12, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !29, file: !30, line: 68, baseType: !45, size: 64, offset: 768)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !30, line: 36, flags: DIFlagFwdDecl)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !29, file: !30, line: 70, baseType: !48, size: 64, offset: 832)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !29, file: !30, line: 72, baseType: !10, size: 32, offset: 896)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !30, line: 73, baseType: !10, size: 32, offset: 928)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !29, file: !30, line: 74, baseType: !52, size: 64, offset: 960)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !53, line: 152, baseType: !54)
!53 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test3")
!54 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !29, file: !30, line: 77, baseType: !56, size: 16, offset: 1024)
!56 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !29, file: !30, line: 78, baseType: !58, size: 8, offset: 1040)
!58 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !29, file: !30, line: 79, baseType: !60, size: 8, offset: 1048)
!60 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !61)
!61 = !{!62}
!62 = !DISubrange(count: 1)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !30, line: 81, baseType: !64, size: 64, offset: 1088)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !30, line: 43, baseType: null)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !30, line: 89, baseType: !67, size: 64, offset: 1152)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !53, line: 153, baseType: !54)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !29, file: !30, line: 91, baseType: !69, size: 64, offset: 1216)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !30, line: 37, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !29, file: !30, line: 92, baseType: !72, size: 64, offset: 1280)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !30, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !29, file: !30, line: 93, baseType: !48, size: 64, offset: 1344)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !29, file: !30, line: 94, baseType: !76, size: 64, offset: 1408)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !29, file: !30, line: 95, baseType: !78, size: 64, offset: 1472)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !79, line: 62, baseType: !80)
!79 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test3")
!80 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !29, file: !30, line: 96, baseType: !10, size: 32, offset: 1536)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !29, file: !30, line: 98, baseType: !83, size: 160, offset: 1568)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 20)
!86 = !DILocation(line: 10, column: 11, scope: !7)
!87 = !DILocalVariable(name: "filename", scope: !7, file: !1, line: 11, type: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!90 = !DILocation(line: 11, column: 17, scope: !7)
!91 = !DILocation(line: 11, column: 28, scope: !7)
!92 = !DILocation(line: 12, column: 16, scope: !7)
!93 = !DILocation(line: 12, column: 10, scope: !7)
!94 = !DILocation(line: 12, column: 8, scope: !7)
!95 = !DILocation(line: 13, column: 12, scope: !7)
!96 = !DILocation(line: 13, column: 5, scope: !7)
!97 = !DILocation(line: 14, column: 12, scope: !7)
!98 = !DILocation(line: 14, column: 5, scope: !7)
!99 = !DILocation(line: 18, column: 23, scope: !7)
!100 = !DILocation(line: 18, column: 5, scope: !7)
!101 = !DILocation(line: 20, column: 7, scope: !7)
!102 = !DILocation(line: 21, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 9)
!104 = !DILocation(line: 21, column: 13, scope: !103)
!105 = !DILocation(line: 21, column: 11, scope: !103)
!106 = !DILocation(line: 21, column: 9, scope: !7)
!107 = !DILocation(line: 23, column: 10, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 23, column: 10)
!109 = distinct !DILexicalBlock(scope: !103, file: !1, line: 22, column: 5)
!110 = !DILocation(line: 23, column: 12, scope: !108)
!111 = !DILocation(line: 23, column: 10, scope: !109)
!112 = !DILocation(line: 25, column: 11, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 25, column: 11)
!114 = distinct !DILexicalBlock(scope: !108, file: !1, line: 24, column: 6)
!115 = !DILocation(line: 25, column: 13, scope: !113)
!116 = !DILocation(line: 25, column: 11, scope: !114)
!117 = !DILocation(line: 27, column: 12, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 27, column: 12)
!119 = distinct !DILexicalBlock(scope: !113, file: !1, line: 26, column: 7)
!120 = !DILocation(line: 27, column: 14, scope: !118)
!121 = !DILocation(line: 27, column: 12, scope: !119)
!122 = !DILocation(line: 29, column: 25, scope: !123)
!123 = distinct !DILexicalBlock(scope: !124, file: !1, line: 29, column: 25)
!124 = distinct !DILexicalBlock(scope: !118, file: !1, line: 28, column: 17)
!125 = !DILocation(line: 29, column: 27, scope: !123)
!126 = !DILocation(line: 29, column: 25, scope: !124)
!127 = !DILocation(line: 31, column: 29, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 31, column: 29)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 30, column: 21)
!130 = !DILocation(line: 31, column: 31, scope: !128)
!131 = !DILocation(line: 31, column: 29, scope: !129)
!132 = !DILocation(line: 33, column: 33, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 33, column: 33)
!134 = distinct !DILexicalBlock(scope: !128, file: !1, line: 32, column: 25)
!135 = !DILocation(line: 33, column: 35, scope: !133)
!136 = !DILocation(line: 33, column: 33, scope: !134)
!137 = !DILocation(line: 35, column: 37, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 35, column: 37)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 34, column: 29)
!140 = !DILocation(line: 35, column: 39, scope: !138)
!141 = !DILocation(line: 35, column: 37, scope: !139)
!142 = !DILocation(line: 36, column: 29, scope: !138)
!143 = !DILocation(line: 36, column: 34, scope: !138)
!144 = !DILocation(line: 36, column: 38, scope: !138)
!145 = !DILocation(line: 36, column: 36, scope: !138)
!146 = !DILocation(line: 36, column: 31, scope: !138)
!147 = !DILocation(line: 36, column: 27, scope: !138)
!148 = !DILocation(line: 36, column: 25, scope: !138)
!149 = !DILocation(line: 38, column: 29, scope: !139)
!150 = !DILocation(line: 39, column: 25, scope: !134)
!151 = !DILocation(line: 40, column: 21, scope: !129)
!152 = !DILocation(line: 41, column: 17, scope: !124)
!153 = !DILocation(line: 42, column: 7, scope: !119)
!154 = !DILocation(line: 43, column: 6, scope: !114)
!155 = !DILocation(line: 44, column: 5, scope: !109)
!156 = !DILocation(line: 47, column: 10, scope: !157)
!157 = distinct !DILexicalBlock(scope: !103, file: !1, line: 46, column: 5)
!158 = !DILocation(line: 47, column: 14, scope: !157)
!159 = !DILocation(line: 47, column: 19, scope: !157)
!160 = !DILocation(line: 47, column: 23, scope: !157)
!161 = !DILocation(line: 47, column: 21, scope: !157)
!162 = !DILocation(line: 47, column: 16, scope: !157)
!163 = !DILocation(line: 47, column: 12, scope: !157)
!164 = !DILocation(line: 47, column: 8, scope: !157)
!165 = !DILocation(line: 49, column: 14, scope: !7)
!166 = !DILocation(line: 49, column: 18, scope: !7)
!167 = !DILocation(line: 49, column: 23, scope: !7)
!168 = !DILocation(line: 49, column: 27, scope: !7)
!169 = !DILocation(line: 49, column: 25, scope: !7)
!170 = !DILocation(line: 49, column: 20, scope: !7)
!171 = !DILocation(line: 49, column: 16, scope: !7)
!172 = !DILocation(line: 49, column: 12, scope: !7)
!173 = !DILocation(line: 51, column: 44, scope: !7)
!174 = !DILocation(line: 51, column: 5, scope: !7)
!175 = !DILocation(line: 53, column: 5, scope: !7)
