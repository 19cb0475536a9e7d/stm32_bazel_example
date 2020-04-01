package(default_visibility = ['//visibility:public'])
load(":cc_toolchain_config.bzl", "cc_toolchain_config")
cc_toolchain_config(name = "armeabi-v7a_toolchain_config")

cc_toolchain_suite(
    name = "arm-none-eabi",
    toolchains = {
        "armeabi-v7a": ":cc-compiler-armeabi-v7a",
    },
)

filegroup(name = "all", srcs = glob(["*.sh"]))

cc_toolchain(
    name = "cc-compiler-armeabi-v7a",
    toolchain_identifier = "armeabi-v7a-toolchain",
    toolchain_config = ":armeabi-v7a_toolchain_config",
    all_files = ":all",
    compiler_files = ":all",
    dwp_files = ":all",
    linker_files = ":all",
    objcopy_files = ":all",
    strip_files = ":all",
    supports_param_files = 0,
)
