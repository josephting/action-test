workflow "Test" {
  on = "push"
  resolves = ["Run Test"]
}

action "Run Test" {
  uses = "actions/docker/cli@76ff57a6c3d817840574a98950b0c7bc4e8a13a8"
  args = "build ."
}
