# This file is used to generate the BUILD files for their 
# initial state before submitting changes.

# You can use it after running generate_build_files.sh to test 
# your changes. 


# Revert go BUILD file
cat > go/cmd/server/BUILD <<EOF
load("@io_bazel_rules_go//go:def.bzl", "go_binary")

# deps
#       "@com_github_golang_protobuf//jsonpb:go_default_library_gen",
#       "@org_golang_google_grpc//:go_default_library",
#       "@org_golang_google_grpc//reflection:go_default_library",
EOF


# Revert java BUILD file
cat > java/src/main/java/bazel/bootcamp/BUILD <<EOF
# deps you may need for various targets
#    "@io_grpc_grpc_java//core",
#    "@io_grpc_grpc_java//netty",
#    "@junit_junit//jar" - optional
EOF


# Revert proto BUILD file
cat > proto/logger/BUILD <<EOF
package(default_visibility = ["//visibility:public"])

load("@io_grpc_grpc_java//:java_grpc_library.bzl", "java_grpc_library")
load("@io_bazel_rules_go//proto:def.bzl", "go_proto_library")
# load("@build_bazel_rules_typescript//:defs.bzl", "ts_proto_library")
EOF


# Revert shell test
> tests/BUILD 


# Revert typescript BUILD file
cat > typescript/BUILD <<EOF
# load("@npm_bazel_typescript//:index.bzl", "ts_library", "ts_devserver")

exports_files(["tsconfig.json"])

# ts_devserver(
#     name = "devserver",
#     bootstrap = ["@npm_bazel_typescript//:protobufjs_bootstrap_scripts"],
#     entry_module = "bootcamp/typescript/app",
#     port = 8080,
#     deps = [":app"],
# )
EOF


# Write the WORKSPACE file
${SHELL} ./create_initial_workspace_file_state.sh

