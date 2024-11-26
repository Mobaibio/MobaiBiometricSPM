// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiSPM",
    products: [
        .library(
            name: "MobaiBiometric",
            targets: ["MobaiBiometricWrapper"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/apple/swift-protobuf.git",
            "1.19.0" ..< "2.0.0"
        ),
    ],
    targets: [
        .target(
            name: "MobaiBiometricWrapper",
            dependencies: [
                .target(name: "MobaiBiometric"),
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ],
            path: "Sources/MobaiBiometricCore"
        ),
        .binaryTarget(
            name: "MobaiBiometric",
            url: "https://downloads.mobai.dev/releases/ios/2.1.2-beta.2/MobaiBiometric.xcframework.zip",
            checksum: "44e1b5fc954415c6f0901fc61411ef1ad13c7999d43a8d2a93a0d62260dcdfab"
        ),
        
    ]
)
