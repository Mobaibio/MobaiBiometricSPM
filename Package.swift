// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiBiometric",
    products: [
        .library(
            name: "MobaiBiometric",
            targets: ["MobaiBiometricCore"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            "1.19.0" ..< "2.0.0"
        ),
    ],
    targets: [
        .binaryTarget(
            name: "MobaiBiometric",
            url: "https://downloads.mobai.dev/releases/ios/2.1.2-beta.1/MobaiBiometric.xcframework.zip",
            checksum: "09d7cb61ccbad59d237a9a0b722c5c13035da3bf1432b6acdf0ad5b8f1d01a86"
        ),
        .target(
            name: "MobaiBiometricCore",
            dependencies: [
                "MobaiBiometric",
                .product(name: "SwiftProtobuf", package: "swift-protobuf")
            ],
            path: "Sources/MobaiBiometricCore" // or specify your custom path
        ),
    ]
)
