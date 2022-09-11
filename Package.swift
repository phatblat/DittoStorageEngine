// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DittoStorageEngine",
    products: [
        .library(
            name: "DittoStorageEngine",
            targets: ["DittoStorageEngine"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mergesort/Bodega.git", .upToNextMajor(from: "1.0.0"))
    ],
    targets: [
        .target(
            name: "DittoStorageEngine",
            dependencies: []),
        .testTarget(
            name: "DittoStorageEngineTests",
            dependencies: ["DittoStorageEngine"]),
    ]
)
