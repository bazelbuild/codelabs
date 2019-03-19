# deps you may need for various targets
#    "@io_grpc_grpc_java//core",
#    "@io_grpc_grpc_java//netty",
#    "@junit_junit//jar" - optional,

java_binary(
	name = "HelloBazelBootcamp",
	srcs = ["HelloBazelBootcamp.java"],
)

java_library(
	name = "JavaLoggingClientLibrary",
	srcs = ["JavaLoggingClientLibrary.java"],
	deps = [
		"//proto/logger:logger_java_proto",
		"//proto/logger:logger_java_grpc",
		"@io_grpc_grpc_java//core",
		"@io_grpc_grpc_java//netty",
	]
)

java_binary(
	name = "JavaLoggingClient",
	srcs = ["JavaLoggingClient.java"],
	deps = [":JavaLoggingClientLibrary"]
)

java_test(
	name = "JavaLoggingClientLibraryTest",
	srcs = ["JavaLoggingClientLibraryTest.java"],
	deps = [":JavaLoggingClientLibrary"]
)

java_test(
	name = "JavaLoggingClientTest",
	srcs = ["JavaLoggingClientTest.java"],
	deps = [":JavaLoggingClient"]
)