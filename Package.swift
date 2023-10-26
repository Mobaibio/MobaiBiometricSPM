// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiBiometricSPM",
    products: [
        .library(
            name: "MobaiBiometricSPM",
            targets: ["MobaiBiometricSPM", "MobaiBiometric"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "MobaiBiometricSPM",
            dependencies: [
                .target(name: "MobaiBiometric"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ]),
        .binaryTarget(
            name: "MobaiBiometric",
            path: "./Sources/MobaiBiometric.xcframework"
        ),
    ]
)
