workflow "copyright notices" {
  on = "push"
  resolves = ["actions/action-builder/shell@master"]
}

action "actions/action-builder/shell@master" {
  uses = "actions/action-builder/shell@master"
  runs = "make"
  args = "copyright"
}
