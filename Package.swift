// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "compiled-framework-spm",
    platforms: [
        .macOS("10.15")
        ],
    products: [
        // Products define the executables and libraries produced by a package, and make them visible to other packages.
        .library(
            name: "compiled-framework-spm",
            targets: ["compiled-framework-spm"]
        )
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages which this package depends on.
        .target(
            name: "compiled-framework-spm",
            dependencies: ["Logging"]
        ),
        .binaryTarget(
            name: "Logging",
            url: "https://github.com/wendyliga/compiled-framework-spm/releases/download/0.0.1/Logging.xcframework.zip",
            checksum: "c246c715ac7f6fae9ef0a89e758a8514644071a164985b1e95d344a684d84621"
        ),
        // .binaryTarget(
        //     name: "Crypto",
        //     url: "https://github.com/wendyliga/compiled-framework-spm/releases/download/0.0.1/Crypto.xcframework.zip",
        //     checksum: "80ed5b65c5f79f43e94f7417bf6860a69552195399308f066d68930409156784"
        // ),
        .binaryTarget(
            name: "Crypto", 
            path: "artifacts/Crypto.xcframework"
        ),
        .testTarget(
            name: "compiled-framework-spmTests",
            dependencies: ["compiled-framework-spm"]
        ),
    ]
)
