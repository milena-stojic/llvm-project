; RUN: opt -disable-output -passes=z-ms-myhelloworldpass %s 2>&1 | FileCheck %s

; CHECK: Function with name: f1
;;{{^}}[ 0-9A-Za-z:]+f1[ 0-9A-Za-z]+{{$}}
define i32 @f1() {
  %a = add i32 2, 3
  ret i32 %a
}

; CHECK: Function with name: f2
;; {{^}}[ 0-9A-Za-z:]+f2[ 0-9A-Za-z]+{{$}}
define void @f2() {
  ret void
}