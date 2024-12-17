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
            url: "https://downloads.mobai.dev/releases/ios/2.1.2/MobaiBiometric.xcframework.zip",
            checksum: "6ca8994097e4761ef8810b8d490006f23d5b53e50a4ed6ed35840485bb061372"

        ),
    ]
)
