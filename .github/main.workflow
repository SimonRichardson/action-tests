workflow "copyright notices" {
  on = "push"
  resolves = "Lint"
}

action "Lint" {
  uses = "actions/action-builder/shell@master"
  runs = "make"
  args = "copyright"
}
