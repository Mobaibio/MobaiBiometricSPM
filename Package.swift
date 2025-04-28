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
            url: "https://downloads.mobai.dev/releases/ios/2.2.1/MobaiBiometric.xcframework.zip",
            checksum: "68cb9b973dff72c2f3754b77238ba164426ff510f844b30eb12c770740f3b55e"

        ),
    ]
)
