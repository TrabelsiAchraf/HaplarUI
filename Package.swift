// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "HaplarUI",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "HaplarUI",
            targets: ["HaplarUI"]),
    ],
    targets: [
        .binaryTarget(
            name: "HaplarUI",
            path: "Sources/HaplarUI.xcframework"
        ),
    ]
)
