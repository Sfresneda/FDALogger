// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "FDALogger",
    platforms: [
        .macOS(.v11),
        .iOS(.v14),
        .tvOS(.v14),
        .watchOS(.v6)
    ],
    products: [
        .library(
            name: "FDALogger",
            targets: ["FDALogger"]),
    ],
    targets: [
        .target(
            name: "FDALogger"),
        .testTarget(
            name: "FDALoggerTests",
            dependencies: ["FDALogger"]),
    ]
)
