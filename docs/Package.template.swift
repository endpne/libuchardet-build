// swift-tools-version:5.8

import PackageDescription

let package = Package(
    name: "libuchardet",
    platforms: [.macOS(.v10_15), .iOS(.v13), .tvOS(.v13)],
    products: [
        .library(name: "Libuchardet", targets: ["_Libuchardet"]),
    ],
    targets: [
        // Need a dummy target to embedded correctly.
        // https://github.com/apple/swift-package-manager/issues/6069
        .target(
            name: "_Libuchardet",
            dependencies: ["Libuchardet"],
            path: "Sources/_Dummy"
        ),
        //AUTO_GENERATE_TARGETS_BEGIN//
        //AUTO_GENERATE_TARGETS_END//
    ]
)
