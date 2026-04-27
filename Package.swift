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
            url: "https://downloads.mobai.dev/releases/ios/2.3.2/MobaiBiometric.xcframework.zip",
            checksum: "6a40000c34857096e0b5f20dc49cce5f30204b542fa159cf6c58133cee1ab2ee"
        ),
    ]
)
