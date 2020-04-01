load("@rules_cc//cc:defs.bzl", "cc_binary")
package(default_visibility = ["//visibility:public"])

filegroup(
    name = "cmsis",
    srcs = glob(["cmsis/*.c", "cmsis/*.cpp"]),
)

filegroup(
    name = "stdperiph",
    srcs = glob(["stdperiph/*.c", "stdperiph/*.cpp"]),
)

filegroup(
    name = "startup",
    srcs = glob(["startup/*.c", "startup/*.cpp"]),
)

filegroup(
    name = "app",
    srcs = glob(["app/*.c", "app/*.cpp"]),
)

filegroup(
    name = "rtos",
    srcs = glob(["rtos/*.c", "rtos/*.cpp"]),
)

cc_binary(
    name = "main",
    srcs = ["main.cpp", "cmsis", "stdperiph", "startup", "app", "rtos"],
    copts = ["-Iexternal/common_headers/stdperiph", "-Iexternal/common_headers/rtos", "-Iexternal/common_headers/cmsis", "-Iexternal/common_headers/app", "-Iexternal/common_headers/startup", "-DHSE_VALUE=8000000", "-DSTM32F10X_XL", "-O0", "-pipe", "-mthumb", "-mcpu=cortex-m3", "-flto", "-ffunction-sections", "-fomit-frame-pointer", "-fdata-sections", "-fno-builtin", "-Wl,--gc-sections"],
    linkopts = ["-O0", "-pipe", "-mthumb", "-mcpu=cortex-m3", "-flto", "-ffunction-sections", "-fomit-frame-pointer", "-fdata-sections", "-fno-builtin", "-Wl,--gc-sections", "-Wl,--no-wchar-size-warning", "--specs=nano.specs", "--specs=nosys.specs", "-Wl,-Map,main.map", "-u _printf_float", "-u _scanf_float", "-lstdc++", "-lm"],
    deps = ["@common_headers//:headers"]
)
