#include "llvm/Transforms/Utils//Z_MS_DeleteDebugInfo.h"

#include "llvm/Support/Casting.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/IR/IntrinsicInst.h"


using namespace llvm;

// This pass deletes llvm.dbg.* instructions.
PreservedAnalyses Z_MS_DeleteDebugInfoPass::run(Function& F, FunctionAnalysisManager& FAM) {
    errs() << "Function: " << F.getName() << ": \n";
    SmallVector<Instruction*> toBeRemoved;


    for(BasicBlock& B: F) {
       for(Instruction& I : B) {
          if(isa<DbgAssignIntrinsic>(&I))
             toBeRemoved.push_back(&I);
          if(isa<DbgDeclareInst>(&I))
             toBeRemoved.push_back(&I);
          else if(isa<DbgValueInst>(&I))
             toBeRemoved.push_back(&I);
       }
    }

    auto i = toBeRemoved.begin();
    auto iEnd = toBeRemoved.end();

   for(;i != iEnd; i++)
        (*i)->eraseFromParent();
    return PreservedAnalyses::all();
}