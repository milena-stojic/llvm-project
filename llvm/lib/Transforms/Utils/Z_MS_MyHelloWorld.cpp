#include "llvm/Transforms/Utils//Z_MS_MyHelloWorld.h"

using namespace llvm;

// Modification: In my version of hello world pass for each function
// I will write name, return type and check if function can have variable number of arguments.
PreservedAnalyses Z_MS_MyHelloWorldPass::run(Function& F, FunctionAnalysisManager& AM) {
    errs() << "Function with name: " << F.getName();
    errs() << " has " << F.getReturnType() << " return type and ";

    if(F.isVarArg()) 
       errs() << " takes variable number of arguments.\n";
    else
       errs() << " doesn't take variable number of arguments.\n";
    
    return PreservedAnalyses::all();
}