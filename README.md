# Swift Package for MobaiBiometric iOS SDK

This project contains Swift Package for MobaiBiometric ios SDK

## Installation

Integrate MobaiBiometric SDK by adding the package as a dependency to your Xcode project 

1. From the File menu, select Add Packages...
2. Enter "https://github.com/Mobaibio/MobaiBiometricSPM" into the package repository URL text field

### Required Dependencies

**Important:** `MobaiNFC` and `MobaiDocument` bundle the required Innovatrics DOT frameworks inside this package.

3. Add the Mobai package product:
   - Use **only** the `MobaiNFC` product.
   - In code, `import MobaiNfc`.

## Usage

Import the package

```swift
import MobaiBiometric
import MobaiNfc      // No extra dependencies required
import MobaiDocument // No extra dependencies required
```

