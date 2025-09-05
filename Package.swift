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
            url: "https://downloads.mobai.dev/releases/ios/2.2.2/MobaiBiometric.xcframework.zip",
            checksum: "7592c070022e6edec5ea15462fa3cf5c042ae24c503323ec614ab5e753d006a1"

        ),
    ]
)
