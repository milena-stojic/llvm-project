#include "llvm/Transforms/Utils//Z_MS_HelloDebugInfo.h"
#include "llvm/Support/Casting.h"
#include "llvm/IR/IntrinsicInst.h"


using namespace llvm;

// This pass writes number of llvm.dbg.* instructions, of each sort.
PreservedAnalyses Z_MS_HelloDebugInfoPass::run(Function& F, FunctionAnalysisManager& FAM) {
    errs() << "Poceli\n";
    errs() << "Function: " << F.getName() << ": \n";

    int number_of_debug_decl = 0;
    int number_of_debug_value = 0;
    int number_of_debug_assign = 0;

    for(const BasicBlock& B: F) {
       for(const Instruction& I : B) {
          if(isa<DbgAssignIntrinsic>(&I))
             number_of_debug_assign++;
          if(isa<DbgDeclareInst>(&I))
             number_of_debug_decl++;
          else if(isa<DbgValueInst>(&I))
             number_of_debug_value++;
       }
    }

    errs() << "      llvm.dbg.values : " << number_of_debug_value << "\n";
    errs() << "      llvm.dbg.declare :" << number_of_debug_decl << "\n";
    errs() << "      llvm.dbg.assign :" << number_of_debug_assign << "\n";

    return PreservedAnalyses::all();
}