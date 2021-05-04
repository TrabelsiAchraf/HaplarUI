// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "UIHaplarKit",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "UIHaplarKit",
            targets: ["UIHaplarKit"]),
    ],
    targets: [
        .binaryTarget(
            name: "UIHaplarKit",
            path: "UIHaplarKit.xcframework"),
    ]
)
