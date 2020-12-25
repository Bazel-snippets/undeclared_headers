load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

git_repository(
    name = "tab_toolchains",
    commit = "b62b0ed266b67d09c8eeb8db9728c7a844612015",
    remote = "https://gitlab.tableausoftware.com/tableaubuild/bazel/tab_toolchains",
    shallow_since = "1608230193 -0500",
)

load("@tab_toolchains//bazel:tab_toolchains_deps.bzl", "tab_toolchains_deps")

tab_toolchains_deps()

load("@tab_toolchains//bazel/repository_rules:generate_toolchains_registration.bzl", "generate_toolchains_registration")

generate_toolchains_registration(name = "toolchains_registration")

load("@tab_toolchains//bazel/toolchains:register_custom_toolchains.bzl", "register_custom_toolchains")

register_custom_toolchains()
