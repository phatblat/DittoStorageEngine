// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DittoStorageEngine",
    platforms: [
        .iOS(.v13),
        .macOS(.v11),
    ],
    products: [
        .library(
            name: "DittoStorageEngine",
            targets: ["DittoStorageEngine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/getditto/DittoSwiftPackage.git", .upToNextMajor(from: "2.0.0")),
        .package(url: "https://github.com/mergesort/Bodega.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        .target(
            name: "DittoStorageEngine",
            dependencies: [
                .product(name: "DittoSwift", package: "DittoSwiftPackage"),
                .product(name: "Bodega", package: "Bodega"),
            ]),
        .testTarget(
            name: "DittoStorageEngineTests",
            dependencies: ["DittoStorageEngine"]),
    ]
)
