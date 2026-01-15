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
            targets: [
                "MobaiNfc",
                "DotCore",
                "DotDocumentCommons",
                "DotNfc",
                "DotOpenSSL",
                "DotSerialization",
                "DotProtocolBuffers",
            ]),
        .library(
            name: "MobaiDocument",
            targets: [
                "MobaiDocument",
                "DotDocument",
                "DotCore",
                "DotSerialization",
                "DotCamera",
                "DotProtocolBuffers",
                "DotDocumentCommons",
                "DotCapture",
            ]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "MobaiBiometric",
            url: "https://downloads.mobai.dev/releases/ios/2.3.1/MobaiBiometric.xcframework.zip",
            checksum: "ca30db0b12bcf807b858ed65ed3366af9ef0fdd681a57b748f9c30d761f4116c"
        ),
        .binaryTarget(
            // The underlying XCFramework module is named MobaiNfc
            name: "MobaiNfc",
            url: "https://downloads.mobai.dev/releases/ios/1.1.0/MobaiNfc.xcframework.zip",
            checksum: "2a917eac0117fa88b060e702ffefd5d3ea26b5c4ef3a5e47c3db19caa32254fa"
        ),
        .binaryTarget(
            name: "DotCore",
            path: "Frameworks/DotCore.xcframework"
        ),
        .binaryTarget(
            name: "DotDocumentCommons",
            path: "Frameworks/DotDocumentCommons.xcframework"
        ),
        .binaryTarget(
            name: "DotDocument",
            path: "Frameworks/DotDocument.xcframework"
        ),
        .binaryTarget(
            name: "DotCamera",
            path: "Frameworks/DotCamera.xcframework"
        ),
        .binaryTarget(
            name: "DotCapture",
            path: "Frameworks/DotCapture.xcframework"
        ),
        .binaryTarget(
            name: "DotNfc",
            path: "Frameworks/DotNfc.xcframework"
        ),
        .binaryTarget(
            name: "DotOpenSSL",
            path: "Frameworks/DotOpenSSL.xcframework"
        ),
        .binaryTarget(
            name: "DotSerialization",
            path: "Frameworks/DotSerialization.xcframework"
        ),
        .binaryTarget(
            name: "DotProtocolBuffers",
            path: "Frameworks/DotProtocolBuffers.xcframework"
        ),
        .binaryTarget(
            name: "MobaiDocument",
            url: "https://downloads.mobai.dev/releases/ios/1.1.0/MobaiDocument.xcframework.zip",
            checksum: "73bf6dfae944c1c797151eba91b51b63c1f906e2303fc38d25849182512ba799"
        ),
    ]
)
