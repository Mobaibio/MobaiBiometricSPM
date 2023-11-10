# React Native module for Mobai Biometric SDK

SPM version of Mobai birometrics 
# Installation
You can add MobaiBiometricd to an Xcode project by adding it as a package dependency.

1. From the File menu, select Add Packages...
2. Enter "https://github.com/Mobaibio/MobaiBiometricSPM" into the package repository URL text field

Then you can use the:
```
import MobaiBiometric 
```
For using serialization function you need to call: 
```
import MobaiBiometricSPM
```
And then you can use MBCaptureSessionResultAdapter: 
```
MBCaptureSessionResultAdapter.serializedData(result: MBCaptureSessionResult)
```
