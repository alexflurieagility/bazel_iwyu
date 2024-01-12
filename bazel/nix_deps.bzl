load("@io_tweag_rules_nixpkgs//nixpkgs:repositories.bzl", "rules_nixpkgs_dependencies")

def bazel_iwyu_nix_deps():
    rules_nixpkgs_dependencies()
