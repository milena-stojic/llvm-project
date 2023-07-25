; ModuleID = '../../tmp/moj.c'
source_filename = "../../tmp/moj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [14 x i8] c"Pocinjemo :)\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f(i32 %0) #0 !dbg !7 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  call void @llvm.dbg.declare(metadata i32* %3, metadata !11, metadata !DIExpression()), !dbg !12
  %4 = load i32, i32* %3, align 4, !dbg !13
  %5 = icmp eq i32 %4, 0, !dbg !15
  br i1 %5, label %9, label %6, !dbg !16

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4, !dbg !17
  %8 = icmp eq i32 %7, 1, !dbg !18
  br i1 %8, label %9, label %10, !dbg !19

9:                                                ; preds = %6, %1
  store i32 1, i32* %2, align 4, !dbg !20
  br label %16, !dbg !20

10:                                               ; preds = %6
  %11 = load i32, i32* %3, align 4, !dbg !21
  %12 = load i32, i32* %3, align 4, !dbg !22
  %13 = sub nsw i32 %12, 1, !dbg !23
  %14 = call i32 @f(i32 %13), !dbg !24
  %15 = mul nsw i32 %11, %14, !dbg !25
  store i32 %15, i32* %2, align 4, !dbg !26
  br label %16, !dbg !26

16:                                               ; preds = %10, %9
  %17 = load i32, i32* %2, align 4, !dbg !27
  ret i32 %17, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !28 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %2, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %2, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i32 1, i32* %3, align 4, !dbg !36
  br label %5, !dbg !38

5:                                                ; preds = %12, %0
  %6 = load i32, i32* %3, align 4, !dbg !39
  %7 = icmp slt i32 %6, 10, !dbg !41
  br i1 %7, label %8, label %15, !dbg !42

8:                                                ; preds = %5
  %9 = load i32, i32* %3, align 4, !dbg !43
  %10 = load i32, i32* %2, align 4, !dbg !44
  %11 = add nsw i32 %10, %9, !dbg !44
  store i32 %11, i32* %2, align 4, !dbg !44
  br label %12, !dbg !45

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4, !dbg !46
  %14 = add nsw i32 %13, 1, !dbg !46
  store i32 %14, i32* %3, align 4, !dbg !46
  br label %5, !dbg !47, !llvm.loop !48

15:                                               ; preds = %5
  %16 = load i32, i32* %2, align 4, !dbg !50
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16), !dbg !51
  ret i32 0, !dbg !52
}

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../../tmp/moj.c", directory: "/home/syrmia/Courses/LLVM/Moj_llvm/llvm-project")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.0-4ubuntu1 "}
!7 = distinct !DISubprogram(name: "f", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "n", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!12 = !DILocation(line: 3, column: 11, scope: !7)
!13 = !DILocation(line: 4, column: 6, scope: !14)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 4, column: 6)
!15 = !DILocation(line: 4, column: 8, scope: !14)
!16 = !DILocation(line: 4, column: 14, scope: !14)
!17 = !DILocation(line: 4, column: 17, scope: !14)
!18 = !DILocation(line: 4, column: 18, scope: !14)
!19 = !DILocation(line: 4, column: 6, scope: !7)
!20 = !DILocation(line: 5, column: 5, scope: !14)
!21 = !DILocation(line: 7, column: 10, scope: !7)
!22 = !DILocation(line: 7, column: 16, scope: !7)
!23 = !DILocation(line: 7, column: 17, scope: !7)
!24 = !DILocation(line: 7, column: 14, scope: !7)
!25 = !DILocation(line: 7, column: 12, scope: !7)
!26 = !DILocation(line: 7, column: 3, scope: !7)
!27 = !DILocation(line: 9, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !29, scopeLine: 12, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{!10}
!31 = !DILocation(line: 13, column: 4, scope: !28)
!32 = !DILocalVariable(name: "s", scope: !28, file: !1, line: 14, type: !10)
!33 = !DILocation(line: 14, column: 8, scope: !28)
!34 = !DILocalVariable(name: "i", scope: !28, file: !1, line: 14, type: !10)
!35 = !DILocation(line: 14, column: 15, scope: !28)
!36 = !DILocation(line: 16, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !28, file: !1, line: 16, column: 4)
!38 = !DILocation(line: 16, column: 8, scope: !37)
!39 = !DILocation(line: 16, column: 12, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 16, column: 4)
!41 = !DILocation(line: 16, column: 13, scope: !40)
!42 = !DILocation(line: 16, column: 4, scope: !37)
!43 = !DILocation(line: 17, column: 8, scope: !40)
!44 = !DILocation(line: 17, column: 6, scope: !40)
!45 = !DILocation(line: 17, column: 5, scope: !40)
!46 = !DILocation(line: 16, column: 18, scope: !40)
!47 = !DILocation(line: 16, column: 4, scope: !40)
!48 = distinct !{!48, !42, !49}
!49 = !DILocation(line: 17, column: 8, scope: !37)
!50 = !DILocation(line: 19, column: 19, scope: !28)
!51 = !DILocation(line: 19, column: 4, scope: !28)
!52 = !DILocation(line: 21, column: 4, scope: !28)
