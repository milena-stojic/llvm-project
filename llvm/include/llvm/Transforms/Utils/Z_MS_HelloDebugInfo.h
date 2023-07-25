#ifndef Z_MS_HELLODEBUGINFO_H_
#define Z_MS_HELLODEBUGINFO_H_

#include "llvm/IR/PassManager.h"

namespace llvm {
    class Z_MS_HelloDebugInfoPass : public PassInfoMixin<Z_MS_HelloDebugInfoPass> {
        public:
           PreservedAnalyses run(Function& F, FunctionAnalysisManager& FAM);
    };
}

#endif