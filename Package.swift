// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MobaiBiometric",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MobaiBiometric",
            targets: ["MobaiBiometric"]),
        .library(
            // Publish NFC as a single product (binary + Dot deps via dot-ios-sdk-spm).
            name: "MobaiNFC",
            targets: [
                "MobaiNfc",
                "_MobaiNfcDeps",
            ]),
        .library(
            name: "MobaiDocument",
            targets: [
                "MobaiDocument",
                "MobaiDocumentDeps",
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/innovatrics/dot-ios-sdk-spm.git", exact: "8.17.0")
    ],
    targets: [
        .binaryTarget(
            name: "MobaiBiometric",
            url: "https://downloads.mobai.dev/releases/ios/2.3.1/MobaiBiometric.xcframework.zip",
            checksum: "ca30db0b12bcf807b858ed65ed3366af9ef0fdd681a57b748f9c30d761f4116c"
        ),
        .binaryTarget(
            name: "MobaiNfc",
            path: "Frameworks/MobaiNfc.xcframework"
        ),
        .target(
            name: "_MobaiNfcDeps",
            dependencies: [
                .product(name: "DotNfc", package: "dot-ios-sdk-spm")
            ]
        ),
        .binaryTarget(
            name: "MobaiDocument",
            url: "https://downloads.mobai.dev/releases/ios/1.1.0/MobaiDocument.xcframework.zip",
            checksum: "73bf6dfae944c1c797151eba91b51b63c1f906e2303fc38d25849182512ba799"
        ),
        .target(
            name: "MobaiDocumentDeps",
            dependencies: [
                .product(name: "DotDocument", package: "dot-ios-sdk-spm")
            ]
        ),
    ]
)
