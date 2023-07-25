; ModuleID = 'test4.c'
source_filename = "test4.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%le\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"%.15e\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"The Value of b is %f\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"The Value of result is %f\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32
@0 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@1 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@2 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@3 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@4 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@5 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@6 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@7 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@8 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@9 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@10 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@11 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@12 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@13 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@14 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@15 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@16 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@17 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@18 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@19 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@20 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@21 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@22 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@23 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@24 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@25 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@26 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@27 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@28 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@29 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@30 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@31 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@32 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@33 = private unnamed_addr constant [8 x i8] c"main%23\00"
@34 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@35 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@36 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@37 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@38 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@39 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@40 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@41 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@42 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@43 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@44 = private unnamed_addr constant [8 x i8] c"main%29\00"
@45 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@46 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@47 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@48 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@49 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@50 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@51 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@52 = private unnamed_addr constant [8 x i8] c"test4.c\00"
@53 = private unnamed_addr constant [8 x i8] c"test4.c\00"

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !7 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !2
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !2
  %5 = xor i32 %3, 25386
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !2
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !2
  store i32 12693, i32* @__afl_prev_loc, !nosanitize !2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct._IO_FILE*, align 8
  %15 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata double* %12, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata double* %13, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata %struct._IO_FILE** %14, metadata !23, metadata !DIExpression()), !dbg !84
  store %struct._IO_FILE* null, %struct._IO_FILE** %14, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i8** %15, metadata !85, metadata !DIExpression()), !dbg !88
  %16 = load i8**, i8*** %11, align 8, !dbg !89
  %17 = getelementptr inbounds i8*, i8** %16, i64 1, !dbg !89
  %18 = load i8*, i8** %17, align 8, !dbg !89
  store i8* %18, i8** %15, align 8, !dbg !88
  %19 = load i8*, i8** %15, align 8, !dbg !90
  %20 = call %struct._IO_FILE* @fopen(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)), !dbg !91
  store %struct._IO_FILE* %20, %struct._IO_FILE** %14, align 8, !dbg !92
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !93
  %22 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), double* %12), !dbg !94
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %14, align 8, !dbg !95
  %24 = call i32 @fclose(%struct._IO_FILE* %23), !dbg !96
  %25 = load double, double* %12, align 8, !dbg !97
  %26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), double %25), !dbg !98
  %27 = load double, double* %12, align 8, !dbg !99
  %28 = load double, double* %12, align 8, !dbg !100
  %29 = fmul double %27, %28, !dbg !101
  call void @DoubleErrBits(i32 9399, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @33, i32 0, i32 0), double %29), !dbg !102
  call void @_show_Double(double %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @34, i32 0, i32 0), i32 18), !dbg !102
  store double %29, double* %13, align 8, !dbg !102
  %30 = load double, double* %12, align 8, !dbg !103
  %31 = call double @sqrt(double %30) #4, !dbg !104
  call void @_show_Sqrt(double %30, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @37, i32 0, i32 0), i32 20), !dbg !105
  store double %31, double* %13, align 8, !dbg !105
  %32 = call double @sqrt(double -4.000000e+00) #4, !dbg !106
  call void @_show_Sqrt(double -4.000000e+00, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @39, i32 0, i32 0), i32 22), !dbg !107
  store double %32, double* %12, align 8, !dbg !107
  %33 = call double @log(double 0.000000e+00) #4, !dbg !108
  call void @_show_Log(double 0.000000e+00, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @41, i32 0, i32 0), i32 24), !dbg !109
  store double %33, double* %12, align 8, !dbg !109
  %34 = call double @log(double 0x7FEFFFFFFFFFFFFF) #4, !dbg !110
  call void @_show_Log(double 0x7FEFFFFFFFFFFFFF, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @43, i32 0, i32 0), i32 26), !dbg !111
  %35 = fadd double %34, 4.000000e+00, !dbg !111
  call void @DoubleErrBits(i32 9405, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @44, i32 0, i32 0), double %35), !dbg !112
  call void @_show_Double(double %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @45, i32 0, i32 0), i32 26), !dbg !112
  %36 = call double @exp(double %35) #4, !dbg !112
  call void @_show_Exp(double %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @46, i32 0, i32 0), i32 26), !dbg !113
  store double %36, double* %12, align 8, !dbg !113
  %37 = call double @pow(double 0.000000e+00, double -3.000000e+00) #4, !dbg !114
  call void @_show_Pow(double 0.000000e+00, double -3.000000e+00, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @48, i32 0, i32 0), i32 28), !dbg !115
  store double %37, double* %12, align 8, !dbg !115
  %38 = load double, double* %12, align 8, !dbg !116
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i32 0, i32 0), double %38), !dbg !117
  %40 = load double, double* %13, align 8, !dbg !118
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), double %40), !dbg !119
  ret i32 0, !dbg !120
}

; Function Attrs: nounwind readnone speculatable
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare %struct._IO_FILE* @fopen(i8*, i8*) #2

declare i32 @__isoc99_fscanf(%struct._IO_FILE*, i8*, ...) #2

declare i32 @fclose(%struct._IO_FILE*) #2

declare i32 @printf(i8*, ...) #2

; Function Attrs: nounwind
declare double @sqrt(double) #3

; Function Attrs: nounwind
declare double @log(double) #3

; Function Attrs: nounwind
declare double @exp(double) #3

; Function Attrs: nounwind
declare double @pow(double, double) #3

declare void @_show_Float(float)

declare void @_show_Double(double, i8*, i32)

declare void @_show_FloatDiv(float, float)

declare void @_show_DoubleDiv(double, double, i8*, i32)

declare void @_show_Sqrt(double, i8*, i32)

declare void @_show_Log(double, i8*, i32)

declare void @_show_Exp(double, i8*, i32)

declare void @_show_Pow(double, double, i8*, i32)

declare void @DoubleErrBits(i32, i8*, double)

declare void @DoubleDivErrBits(i32, i8*, double)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 6.0.1 (tags/RELEASE_601/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2)
!1 = !DIFile(filename: "test4.c", directory: "/home/savcuda/Desktop/FloatFuz/tests/test4")
!2 = !{}
!3 = !{i32 2, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 6.0.1 (tags/RELEASE_601/final)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !8, isLocal: false, isDefinition: true, scopeLine: 9, flags: DIFlagPrototyped, isOptimized: false, unit: !0, variables: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 8, type: !10)
!15 = !DILocation(line: 8, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 8, type: !11)
!17 = !DILocation(line: 8, column: 27, scope: !7)
!18 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 10, type: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DILocation(line: 10, column: 12, scope: !7)
!21 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 10, type: !19)
!22 = !DILocation(line: 10, column: 15, scope: !7)
!23 = !DILocalVariable(name: "fp", scope: !7, file: !1, line: 11, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !26, line: 7, baseType: !27)
!26 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test4")
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !28, line: 49, size: 1728, elements: !29)
!28 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test4")
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !45, !47, !48, !49, !53, !55, !57, !61, !64, !66, !69, !72, !73, !75, !79, !80}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !27, file: !28, line: 51, baseType: !10, size: 32)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !27, file: !28, line: 54, baseType: !12, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !27, file: !28, line: 55, baseType: !12, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !27, file: !28, line: 56, baseType: !12, size: 64, offset: 192)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !27, file: !28, line: 57, baseType: !12, size: 64, offset: 256)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !27, file: !28, line: 58, baseType: !12, size: 64, offset: 320)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !27, file: !28, line: 59, baseType: !12, size: 64, offset: 384)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !27, file: !28, line: 60, baseType: !12, size: 64, offset: 448)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !27, file: !28, line: 61, baseType: !12, size: 64, offset: 512)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !27, file: !28, line: 64, baseType: !12, size: 64, offset: 576)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !27, file: !28, line: 65, baseType: !12, size: 64, offset: 640)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !27, file: !28, line: 66, baseType: !12, size: 64, offset: 704)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !27, file: !28, line: 68, baseType: !43, size: 64, offset: 768)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !28, line: 36, flags: DIFlagFwdDecl)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !27, file: !28, line: 70, baseType: !46, size: 64, offset: 832)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !27, file: !28, line: 72, baseType: !10, size: 32, offset: 896)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !27, file: !28, line: 73, baseType: !10, size: 32, offset: 928)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !27, file: !28, line: 74, baseType: !50, size: 64, offset: 960)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !51, line: 152, baseType: !52)
!51 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test4")
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !27, file: !28, line: 77, baseType: !54, size: 16, offset: 1024)
!54 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !27, file: !28, line: 78, baseType: !56, size: 8, offset: 1040)
!56 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !27, file: !28, line: 79, baseType: !58, size: 8, offset: 1048)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 8, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !27, file: !28, line: 81, baseType: !62, size: 64, offset: 1088)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !28, line: 43, baseType: null)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !27, file: !28, line: 89, baseType: !65, size: 64, offset: 1152)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !51, line: 153, baseType: !52)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !27, file: !28, line: 91, baseType: !67, size: 64, offset: 1216)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !28, line: 37, flags: DIFlagFwdDecl)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !27, file: !28, line: 92, baseType: !70, size: 64, offset: 1280)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !28, line: 38, flags: DIFlagFwdDecl)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !27, file: !28, line: 93, baseType: !46, size: 64, offset: 1344)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !27, file: !28, line: 94, baseType: !74, size: 64, offset: 1408)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !27, file: !28, line: 95, baseType: !76, size: 64, offset: 1472)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !77, line: 62, baseType: !78)
!77 = !DIFile(filename: "/home/savcuda/Desktop/FloatFuz/clang+llvm/lib/clang/6.0.1/include/stddef.h", directory: "/home/savcuda/Desktop/FloatFuz/tests/test4")
!78 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !27, file: !28, line: 96, baseType: !10, size: 32, offset: 1536)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !27, file: !28, line: 98, baseType: !81, size: 160, offset: 1568)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 160, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: 20)
!84 = !DILocation(line: 11, column: 11, scope: !7)
!85 = !DILocalVariable(name: "filename", scope: !7, file: !1, line: 12, type: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!88 = !DILocation(line: 12, column: 17, scope: !7)
!89 = !DILocation(line: 12, column: 28, scope: !7)
!90 = !DILocation(line: 13, column: 16, scope: !7)
!91 = !DILocation(line: 13, column: 10, scope: !7)
!92 = !DILocation(line: 13, column: 8, scope: !7)
!93 = !DILocation(line: 14, column: 12, scope: !7)
!94 = !DILocation(line: 14, column: 5, scope: !7)
!95 = !DILocation(line: 15, column: 12, scope: !7)
!96 = !DILocation(line: 15, column: 5, scope: !7)
!97 = !DILocation(line: 16, column: 23, scope: !7)
!98 = !DILocation(line: 16, column: 5, scope: !7)
!99 = !DILocation(line: 18, column: 14, scope: !7)
!100 = !DILocation(line: 18, column: 18, scope: !7)
!101 = !DILocation(line: 18, column: 16, scope: !7)
!102 = !DILocation(line: 18, column: 12, scope: !7)
!103 = !DILocation(line: 20, column: 19, scope: !7)
!104 = !DILocation(line: 20, column: 14, scope: !7)
!105 = !DILocation(line: 20, column: 12, scope: !7)
!106 = !DILocation(line: 22, column: 9, scope: !7)
!107 = !DILocation(line: 22, column: 7, scope: !7)
!108 = !DILocation(line: 24, column: 9, scope: !7)
!109 = !DILocation(line: 24, column: 7, scope: !7)
!110 = !DILocation(line: 26, column: 13, scope: !7)
!111 = !DILocation(line: 26, column: 26, scope: !7)
!112 = !DILocation(line: 26, column: 9, scope: !7)
!113 = !DILocation(line: 26, column: 7, scope: !7)
!114 = !DILocation(line: 28, column: 9, scope: !7)
!115 = !DILocation(line: 28, column: 7, scope: !7)
!116 = !DILocation(line: 30, column: 39, scope: !7)
!117 = !DILocation(line: 30, column: 5, scope: !7)
!118 = !DILocation(line: 32, column: 44, scope: !7)
!119 = !DILocation(line: 32, column: 5, scope: !7)
!120 = !DILocation(line: 34, column: 5, scope: !7)
