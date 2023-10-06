#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/SlotIndexes.h"
#include "llvm/IR/PrintPasses.h"
#include "llvm/InitializePasses.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {

struct __ms_deleteDebugInfoMachinePass : public MachineFunctionPass {
  static char ID;
  std::string MachineFunctions;

  __ms_deleteDebugInfoMachinePass() : MachineFunctionPass(ID) {}

  StringRef getPassName() const override { return "MS DELETE DEBUG INFO"; }

  bool runOnMachineFunction(MachineFunction &MF) override {
    errs() << "Machine function: " << MF.getName() << ": \n";
    SmallVector<MachineInstr *> toBeRemoved;

    for (MachineBasicBlock &MB : MF) {
      for (MachineInstr &MI : MB) {
        if (MI.isDebugInstr())
          toBeRemoved.push_back(&MI);
      }
    }

    auto i = toBeRemoved.begin();
    auto iEnd = toBeRemoved.end();

    for (; i != iEnd; i++)
      (*i)->eraseFromParent();
    return true;
  }
};

char __ms_deleteDebugInfoMachinePass::ID = 0;
} // namespace

namespace llvm {

char &__ms_deleteDebugInfoMachinePassID = __ms_deleteDebugInfoMachinePass::ID;

MachineFunctionPass *createDeleteDebugInfoMachinePass() {
  return new __ms_deleteDebugInfoMachinePass();
}

} // namespace llvm

INITIALIZE_PASS(__ms_deleteDebugInfoMachinePass, "ms-delete-debug-info",
                "MS DELETE DEBUG INFO", false, false)
