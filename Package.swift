// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiBiometric",
    products: [
        .library(
            name: "MobaiBiometric",
            targets: ["MobaiBiometric"]),
    ],
    targets: [
        .binaryTarget(
            name: "MobaiBiometric",
            url: "https://downloads.mobai.dev/releases/ios/2.2.0/MobaiBiometric.xcframework.zip",
            checksum: "2651c51a5083067de35ca9d027a9898d1330dbe43c63eaa69409b3fb4debee29"

        ),
    ]
)
