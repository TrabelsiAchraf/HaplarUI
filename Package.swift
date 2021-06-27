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
            url: "https://github.com/TrabelsiAchraf/UIHaplarFramework/tree/master/Output/HaplarUI.zip",
            checksum: "df5c44269af17a48e07429b5e0235c14aeec7b1684287fae2169972d1306023b"
        ),
    ]
)
