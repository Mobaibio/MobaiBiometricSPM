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
            url: "https://downloads.mobai.dev/releases/ios/2.0.3-beta.2/MobaiBiometric.xcframework.zip",
            checksum: "2af64fa7be19b3735f9e48073d9f6e8b751589f78cde28251be5503cab3b62b0"

        ),
    ]
)
