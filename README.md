# Swift Package for MobaiBiometric iOS SDK

This project contains Swift Package for MobaiBiometric ios SDK

## Installation

Integrate MobaiBiometric SDK by adding the package as a dependency to your Xcode project 

1. From the File menu, select Add Packages...
2. Enter "https://github.com/Mobaibio/MobaiBiometricSPM" into the package repository URL text field

### Required Dependencies

**Important:** `MobaiNFC` and `MobaiDocument` depend on the Innovatrics DOT SDK:

1. Add Package: `https://github.com/innovatrics/dot-ios-sdk-spm.git`
2. Select version: `8.17.0`
3. In your target's dependencies, ensure the following products are linked:
   - For MobaiNFC: `DotNfc`
   - For MobaiDocument: `DotDocument`

## Usage

Import the package

```swift
import MobaiBiometric 
import MobaiNFC      // Requires dot-ios-sdk-spm dependency
import MobaiDocument // Requires dot-ios-sdk-spm dependency
```

