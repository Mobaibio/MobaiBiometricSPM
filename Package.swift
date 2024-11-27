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
            url: "https://downloads.mobai.dev/releases/ios/2.1.2-beta.3/MobaiBiometric.xcframework.zip",
            checksum: "de4ce2b604eecfda9b435c6679ae42ffc192edcb055c8bb0051c71a4c3cbd405"

        ),
    ]
)
