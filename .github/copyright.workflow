workflow "Check copyright notices" {
  on = "push"
  resolves = ["copyright check"]
}

action "copyright check" {
  uses = "actions/action-builder/shell@master"
  runs = "make"
  args = "copyright"
}
