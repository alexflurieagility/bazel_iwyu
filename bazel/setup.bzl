load("@io_tweag_rules_nixpkgs//nixpkgs:nixpkgs.bzl", "nixpkgs_git_repository", "nixpkgs_package", "nixpkgs_cc_configure")

load("@io_tweag_rules_nixpkgs//nixpkgs:toolchains/go.bzl", "nixpkgs_go_configure")

def bazel_iwyu_setup():
    nixpkgs_git_repository(
        name = "nixpkgs_iwyu",
        revision = "9b19f5e77dd906cb52dade0b7bd280339d2a1f3d", # Any tag or commit hash
        sha256 = "" # optional sha to verify package integrity!
    )

    nixpkgs_package(
        name = "include_what_you_use",
        attribute_path = "include-what-you-use",
        repository = "@nixpkgs_iwyu",
    )

