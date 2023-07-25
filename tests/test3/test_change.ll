; ModuleID = 'test3.c'
source_filename = "test3.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%e\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%e\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"The Value of result is %f\0A\00", align 1
@__afl_area_ptr = external global i8*
@__afl_prev_loc = external thread_local global i32

; Function Attrs: noinline nounwind optnone uwtable
define i32 @main(i32, i8**) #0 !dbg !7 {
  %3 = load i32, i32* @__afl_prev_loc, !nosanitize !2
  %4 = load i8*, i8** @__afl_area_ptr, !nosanitize !2
  %5 = xor i32 %3, 14667
  %6 = getelementptr i8, i8* %4, i32 %5
  %7 = load i8, i8* %6, !nosanitize !2
  %8 = add i8 %7, 1
  store i8 %8, i8* %6, !nosanitize !2
  store i32 7333, i32* @__afl_prev_loc
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca %struct._IO_FILE*, align 8
  %16 = alloca i8*, align 8
  store i32 0, i32* %9, align 4
  store i32 %0, i32* %10, align 4
  call void @llvm.dbg.declare(metadata i32* %10, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %1, i8*** %11, align 8
  call void @llvm.dbg.declare(metadata i8*** %11, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata float* %12, metadata !18, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata float* %13, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata float* %14, metadata !23, metadata !DIExpression()), !dbg !24
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
  %23 = call i32 (%struct._IO_FILE*, i8*, ...) @__isoc99_fscanf(%struct._IO_FILE* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), float* %13), !dbg !96
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %15, align 8, !dbg !97
  %25 = call i32 @fclose(%struct._IO_FILE* %24), !dbg !98
  %26 = load float, float* %13, align 4, !dbg !99
  %27 = fpext float %26 to double, !dbg !99
  %28 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0), double %27), !dbg !100
  store float 1.000000e+00, float* %12, align 4, !dbg !101
  %29 = load float, float* %12, align 4, !dbg !102
  %30 = load float, float* %13, align 4, !dbg !104
  %31 = fcmp ogt float %29, %30, !dbg !105
  br i1 %31, label %32, label %95, !dbg !106

; <label>:32:                                     ; preds = %2
  %33 = load i32, i32* @__afl_prev_loc, !dbg !107, !nosanitize !2
  %34 = load i8*, i8** @__afl_area_ptr, !dbg !107, !nosanitize !2
  %35 = xor i32 %33, 9508, !dbg !107
  %36 = getelementptr i8, i8* %34, i32 %35, !dbg !107
  %37 = load i8, i8* %36, !dbg !107, !nosanitize !2
  %38 = add i8 %37, 1, !dbg !107
  store i8 %38, i8* %36, !dbg !107, !nosanitize !2
  store i32 4754, i32* @__afl_prev_loc, !dbg !107
  %39 = load float, float* %13, align 4, !dbg !107
  %40 = fpext float %39 to double, !dbg !107
  %41 = fcmp olt double %40, 4.195920e-01, !dbg !110
  br i1 %41, label %42, label %88, !dbg !111

; <label>:42:                                     ; preds = %32
  %43 = load i32, i32* @__afl_prev_loc, !dbg !112, !nosanitize !2
  %44 = load i8*, i8** @__afl_area_ptr, !dbg !112, !nosanitize !2
  %45 = xor i32 %43, 60640, !dbg !112
  %46 = getelementptr i8, i8* %44, i32 %45, !dbg !112
  %47 = load i8, i8* %46, !dbg !112, !nosanitize !2
  %48 = add i8 %47, 1, !dbg !112
  store i8 %48, i8* %46, !dbg !112, !nosanitize !2
  store i32 30320, i32* @__afl_prev_loc, !dbg !112
  %49 = load float, float* %13, align 4, !dbg !112
  %50 = fpext float %49 to double, !dbg !112
  %51 = fcmp olt double %50, 2.381220e-01, !dbg !115
  br i1 %51, label %52, label %81, !dbg !116

; <label>:52:                                     ; preds = %42
  %53 = load i32, i32* @__afl_prev_loc, !dbg !117, !nosanitize !2
  %54 = load i8*, i8** @__afl_area_ptr, !dbg !117, !nosanitize !2
  %55 = xor i32 %53, 7557, !dbg !117
  %56 = getelementptr i8, i8* %54, i32 %55, !dbg !117
  %57 = load i8, i8* %56, !dbg !117, !nosanitize !2
  %58 = add i8 %57, 1, !dbg !117
  store i8 %58, i8* %56, !dbg !117, !nosanitize !2
  store i32 3778, i32* @__afl_prev_loc, !dbg !117
  %59 = load float, float* %13, align 4, !dbg !117
  %60 = fpext float %59 to double, !dbg !117
  %61 = fcmp olt double %60, 1.491400e-02, !dbg !120
  br i1 %61, label %62, label %74, !dbg !121

; <label>:62:                                     ; preds = %52
  %63 = load i32, i32* @__afl_prev_loc, !dbg !122, !nosanitize !2
  %64 = load i8*, i8** @__afl_area_ptr, !dbg !122, !nosanitize !2
  %65 = xor i32 %63, 30269, !dbg !122
  %66 = getelementptr i8, i8* %64, i32 %65, !dbg !122
  %67 = load i8, i8* %66, !dbg !122, !nosanitize !2
  %68 = add i8 %67, 1, !dbg !122
  store i8 %68, i8* %66, !dbg !122, !nosanitize !2
  store i32 15134, i32* @__afl_prev_loc, !dbg !122
  %69 = load float, float* %12, align 4, !dbg !122
  %70 = load float, float* %13, align 4, !dbg !123
  %71 = load float, float* %13, align 4, !dbg !124
  %72 = fsub float %70, %71, !dbg !125
  call void @_show_Float(float %72), !dbg !126
  %73 = fdiv float %69, %72, !dbg !126
  call void @_show_FloatDiv(float %69, float %72), !dbg !127
  store float %73, float* %12, align 4, !dbg !127
  br label %74, !dbg !128

; <label>:74:                                     ; preds = %62, %52
  %75 = load i32, i32* @__afl_prev_loc, !dbg !129, !nosanitize !2
  %76 = load i8*, i8** @__afl_area_ptr, !dbg !129, !nosanitize !2
  %77 = xor i32 %75, 12135, !dbg !129
  %78 = getelementptr i8, i8* %76, i32 %77, !dbg !129
  %79 = load i8, i8* %78, !dbg !129, !nosanitize !2
  %80 = add i8 %79, 1, !dbg !129
  store i8 %80, i8* %78, !dbg !129, !nosanitize !2
  store i32 6067, i32* @__afl_prev_loc, !dbg !129
  br label %81, !dbg !129

; <label>:81:                                     ; preds = %74, %42
  %82 = load i32, i32* @__afl_prev_loc, !dbg !130, !nosanitize !2
  %83 = load i8*, i8** @__afl_area_ptr, !dbg !130, !nosanitize !2
  %84 = xor i32 %82, 32668, !dbg !130
  %85 = getelementptr i8, i8* %83, i32 %84, !dbg !130
  %86 = load i8, i8* %85, !dbg !130, !nosanitize !2
  %87 = add i8 %86, 1, !dbg !130
  store i8 %87, i8* %85, !dbg !130, !nosanitize !2
  store i32 16334, i32* @__afl_prev_loc, !dbg !130
  br label %88, !dbg !130

; <label>:88:                                     ; preds = %81, %32
  %89 = load i32, i32* @__afl_prev_loc, !dbg !131, !nosanitize !2
  %90 = load i8*, i8** @__afl_area_ptr, !dbg !131, !nosanitize !2
  %91 = xor i32 %89, 62516, !dbg !131
  %92 = getelementptr i8, i8* %90, i32 %91, !dbg !131
  %93 = load i8, i8* %92, !dbg !131, !nosanitize !2
  %94 = add i8 %93, 1, !dbg !131
  store i8 %94, i8* %92, !dbg !131, !nosanitize !2
  store i32 31258, i32* @__afl_prev_loc, !dbg !131
  br label %109, !dbg !131

; <label>:95:                                     ; preds = %2
  %96 = load i32, i32* @__afl_prev_loc, !dbg !132, !nosanitize !2
  %97 = load i8*, i8** @__afl_area_ptr, !dbg !132, !nosanitize !2
  %98 = xor i32 %96, 31398, !dbg !132
  %99 = getelementptr i8, i8* %97, i32 %98, !dbg !132
  %100 = load i8, i8* %99, !dbg !132, !nosanitize !2
  %101 = add i8 %100, 1, !dbg !132
  store i8 %101, i8* %99, !dbg !132, !nosanitize !2
  store i32 15699, i32* @__afl_prev_loc, !dbg !132
  %102 = load float, float* %12, align 4, !dbg !132
  %103 = load float, float* %13, align 4, !dbg !134
  %104 = load float, float* %12, align 4, !dbg !135
  %105 = load float, float* %13, align 4, !dbg !136
  %106 = fdiv float %104, %105, !dbg !137
  call void @_show_FloatDiv(float %104, float %105), !dbg !138
  %107 = fmul float %103, %106, !dbg !138
  call void @_show_Float(float %107), !dbg !139
  %108 = fadd float %102, %107, !dbg !139
  call void @_show_Float(float %108), !dbg !140
  store float %108, float* %12, align 4, !dbg !140
  br label %109

; <label>:109:                                    ; preds = %95, %88
  %110 = load i32, i32* @__afl_prev_loc, !dbg !141, !nosanitize !2
  %111 = load i8*, i8** @__afl_area_ptr, !dbg !141, !nosanitize !2
  %112 = xor i32 %110, 2188, !dbg !141
  %113 = getelementptr i8, i8* %111, i32 %112, !dbg !141
  %114 = load i8, i8* %113, !dbg !141, !nosanitize !2
  %115 = add i8 %114, 1, !dbg !141
  store i8 %115, i8* %113, !dbg !141, !nosanitize !2
  store i32 1094, i32* @__afl_prev_loc, !dbg !141
  %116 = load float, float* %12, align 4, !dbg !141
  %117 = load float, float* %12, align 4, !dbg !142
  %118 = load float, float* %13, align 4, !dbg !143
  %119 = load float, float* %12, align 4, !dbg !144
  %120 = fmul float %118, %119, !dbg !145
  call void @_show_Float(float %120), !dbg !146
  %121 = fdiv float %117, %120, !dbg !146
  call void @_show_FloatDiv(float %117, float %120), !dbg !147
  %122 = fadd float %116, %121, !dbg !147
  call void @_show_Float(float %122), !dbg !148
  store float %122, float* %14, align 4, !dbg !148
  %123 = load float, float* %14, align 4, !dbg !149
  %124 = fpext float %123 to double, !dbg !149
  %125 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i32 0, i32 0), double %124), !dbg !150
  ret i32 0, !dbg !151
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
!19 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!20 = !DILocation(line: 9, column: 11, scope: !7)
!21 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 9, type: !19)
!22 = !DILocation(line: 9, column: 14, scope: !7)
!23 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 9, type: !19)
!24 = !DILocation(line: 9, column: 17, scope: !7)
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
!99 = !DILocation(line: 18, column: 20, scope: !7)
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
!122 = !DILocation(line: 28, column: 13, scope: !118)
!123 = !DILocation(line: 28, column: 18, scope: !118)
!124 = !DILocation(line: 28, column: 22, scope: !118)
!125 = !DILocation(line: 28, column: 20, scope: !118)
!126 = !DILocation(line: 28, column: 15, scope: !118)
!127 = !DILocation(line: 28, column: 11, scope: !118)
!128 = !DILocation(line: 28, column: 9, scope: !118)
!129 = !DILocation(line: 29, column: 7, scope: !119)
!130 = !DILocation(line: 30, column: 6, scope: !114)
!131 = !DILocation(line: 31, column: 5, scope: !109)
!132 = !DILocation(line: 34, column: 10, scope: !133)
!133 = distinct !DILexicalBlock(scope: !103, file: !1, line: 33, column: 5)
!134 = !DILocation(line: 34, column: 14, scope: !133)
!135 = !DILocation(line: 34, column: 19, scope: !133)
!136 = !DILocation(line: 34, column: 23, scope: !133)
!137 = !DILocation(line: 34, column: 21, scope: !133)
!138 = !DILocation(line: 34, column: 16, scope: !133)
!139 = !DILocation(line: 34, column: 12, scope: !133)
!140 = !DILocation(line: 34, column: 8, scope: !133)
!141 = !DILocation(line: 36, column: 14, scope: !7)
!142 = !DILocation(line: 36, column: 18, scope: !7)
!143 = !DILocation(line: 36, column: 23, scope: !7)
!144 = !DILocation(line: 36, column: 27, scope: !7)
!145 = !DILocation(line: 36, column: 25, scope: !7)
!146 = !DILocation(line: 36, column: 20, scope: !7)
!147 = !DILocation(line: 36, column: 16, scope: !7)
!148 = !DILocation(line: 36, column: 12, scope: !7)
!149 = !DILocation(line: 38, column: 44, scope: !7)
!150 = !DILocation(line: 38, column: 5, scope: !7)
!151 = !DILocation(line: 40, column: 5, scope: !7)
