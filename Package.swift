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

        .binaryTarget(
            name: "Libuchardet",
            url: "https://github.com/mpvkit/libuchardet-build/releases/download/0.0.8/Libuchardet.xcframework.zip",
            checksum: "5647490baaebdc6992c63988fdd145567224b1330ec03533e35cf391d8b79945"
        ),
        //AUTO_GENERATE_TARGETS_END//
    ]
)
