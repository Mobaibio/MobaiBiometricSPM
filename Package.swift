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
            name: "MobaiNFC",
            targets: ["MobaiNFC"]),
        .library(
            name: "MobaiDocument",
            targets: ["MobaiDocument"]),
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
            // The underlying XCFramework module is named MobaiNfc
            name: "MobaiNfc",
            path: "Frameworks/MobaiNfc.xcframework"
        ),
        .target(
            // Wrapper module. Consumers should `import MobaiNFC`.
            // This target ensures Dot* modules are available before importing the binary.
            name: "MobaiNFC",
            dependencies: [
                "MobaiNfc",
                .product(name: "DotNfc", package: "dot-ios-sdk-spm"),
                .product(name: "DotCore", package: "dot-ios-sdk-spm"),
                .product(name: "DotDocumentCommons", package: "dot-ios-sdk-spm"),
            ]
        ),
        .binaryTarget(
            name: "MobaiDocument",
            url: "https://downloads.mobai.dev/releases/ios/1.1.0/MobaiDocument.xcframework.zip",
            checksum: "73bf6dfae944c1c797151eba91b51b63c1f906e2303fc38d25849182512ba799"
        ),
    ]
)
