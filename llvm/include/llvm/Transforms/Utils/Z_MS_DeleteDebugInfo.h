#ifndef Z_MS_DELETEDEBUGINFO_H_
#define Z_MS_DELETEDEBUGINFO_H_

#include "llvm/IR/PassManager.h"

namespace llvm {
    class Z_MS_DeleteDebugInfoPass : public PassInfoMixin<Z_MS_DeleteDebugInfoPass> {
        public:
           PreservedAnalyses run(Function& F, FunctionAnalysisManager& FAM);
    };
}

#endif