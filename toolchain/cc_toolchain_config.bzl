load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "tool_path")

def _impl(ctx):
    tool_paths = [
        tool_path(
            name = "gcc",
            path = "arm-none-eabi-gcc.sh",
        ),
        tool_path(
            name = "g++",
            path = "arm-none-eabi-g++.sh",
        ),
        tool_path(
            name = "ld",
            path = "arm-none-eabi-ld.sh",
        ),
        tool_path(
            name = "ar",
            path = "arm-none-eabi-ar.sh",
        ),
        tool_path(
            name = "cpp",
            path = "arm-none-eabi-cpp.sh",
        ),
        tool_path(
            name = "gcov",
            path = "/bin/false",
        ),
        tool_path(
            name = "nm",
            path = "arm-none-eabi-nm.sh",
        ),
        tool_path(
            name = "objdump",
            path = "arm-none-eabi-objdump.sh",
        ),
        tool_path(
            name = "strip",
            path = "arm-none-eabi-strip.sh",
        ),
    ]

    cxx_builtin_include_directories = [
        "/usr/arm-none-eabi/include",
        "/usr/lib/gcc/arm-none-eabi/9.2.0/include"
    ]

    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
        toolchain_identifier = "armeabi-v7a-toolchain",
        host_system_name = "x86_64_linux_gnu",
        target_system_name = "arm-none-eabi",
        target_cpu = "armeabi-v7a",
        target_libc = "unknown",
        compiler = "arm-none-eabi",
        abi_version = "unknown",
        abi_libc_version = "unknown",
        tool_paths = tool_paths,
        cxx_builtin_include_directories = cxx_builtin_include_directories,        
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
