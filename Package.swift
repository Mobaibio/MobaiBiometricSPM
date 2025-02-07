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
            url: "https://downloads.mobai.dev/releases/ios/2.2.0-beta.1/MobaiBiometric.xcframework.zip",
            checksum: "e7957217e85f4744a4d29a71075a6723a108dd2caef13799717a42ef71d58134"

        ),
    ]
)
