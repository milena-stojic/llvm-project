#ifndef LLVM_TRANSFORMS_HELLONEW_Z_MS_MYHELLOWORLD_H
#define LLVM_TRANSFORMS_HELLONEW_Z_MS_MYHELLOWORLD_H


#include "llvm/IR/PassManager.h"

namespace llvm {
    class Z_MS_MyHelloWorldPass : public PassInfoMixin<Z_MS_MyHelloWorldPass>  {
        public:
           PreservedAnalyses run(Function& F, FunctionAnalysisManager& AM);
    };
}

#endif