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
            path: "artifacts/Logging.xcframework"
        ),
        .testTarget(
            name: "compiled-framework-spmTests",
            dependencies: ["compiled-framework-spm"]
        ),
    ]
)
