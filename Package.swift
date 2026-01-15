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
            // Publish NFC as a single product (wrapper + binary).
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
            path: "Frameworks/MobaiNfc.xcframework"
        ),
        .binaryTarget(
            name: "DotCore",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-core/8.17.0/DotCore.zip",
            checksum: "8705b8837242855058191846cb62c23c23015d392eeddd02e0e43d399f3ff315"
        ),
        .binaryTarget(
            name: "DotDocumentCommons",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document-commons/8.17.0/DotDocumentCommons.zip",
            checksum: "6701eecdbba99ae681bf1d50d19cbb29a201ccd927ca48ce3de77d002c2bd7d9"
        ),
        .binaryTarget(
            name: "DotDocument",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-document/8.17.0/DotDocument.zip",
            checksum: "8584e59064a72feacc28a0c1ced165350ef1389501aada7ca6bbf8d514f5869b"
        ),
        .binaryTarget(
            name: "DotCamera",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-camera/8.17.0/DotCamera.zip",
            checksum: "fa4d1669b82f7ed78a956789048749765eddd58f8ff402f3156185b6941e3729"
        ),
        .binaryTarget(
            name: "DotCapture",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-capture/8.17.0/DotCapture.zip",
            checksum: "b82189bc89160298d55d0743d202768d52d7f54a88b822418dced2883a8bd534"
        ),
        .binaryTarget(
            name: "DotNfc",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-nfc/8.17.0/DotNfc.zip",
            checksum: "9bcd0c167da6c0dd5345fcd98e5d350b5127f12b0de5ba20d19b07b4c969fb03"
        ),
        .binaryTarget(
            name: "DotOpenSSL",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-openssl/1.2.1/DotOpenSSL.zip",
            checksum: "c3f919ef386334b683844e077e58996705b4c6d6cd568763e21e970a82f731e9"
        ),
        .binaryTarget(
            name: "DotSerialization",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-serialization/8.17.0/DotSerialization.zip",
            checksum: "0ccbf34475d32940745a7bfe74c6435bab940f8fb172ddcd8609b4f701e07060"
        ),
        .binaryTarget(
            name: "DotProtocolBuffers",
            url: "https://s3.eu-central-1.amazonaws.com/ios-frameworks.innovatrics.com/dot-protobuf/1.16.2/DotProtocolBuffers.zip",
            checksum: "9b0ce3bfb41f2e53fb1c1b3ac4feb49ca800995c8ffd57b1a64635461f4a3220"
        ),
        .binaryTarget(
            name: "MobaiDocument",
            url: "https://downloads.mobai.dev/releases/ios/1.1.0/MobaiDocument.xcframework.zip",
            checksum: "73bf6dfae944c1c797151eba91b51b63c1f906e2303fc38d25849182512ba799"
        ),
    ]
)
