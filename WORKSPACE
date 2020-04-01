new_local_repository(
    name = "common_headers",
    path = "include",
    build_file_content = """
package(default_visibility = ["//visibility:public"])
cc_library(
    name = "headers",
    hdrs = glob(["**/*.h", "**/*.hpp"])
)
"""
)
