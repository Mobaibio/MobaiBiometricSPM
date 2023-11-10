// The Swift Programming Language
// https://docs.swift.org/swift-book

import MobaiBiometric

struct MBCaptureSessionResultAdapter {
    public func serializedData(result: MBCaptureSessionResult) throws -> Data {
        var requestBody = Mobai_BiometricRequest()
        requestBody.recognitionRequest.probeImage = result.faceImage
        requestBody.padRequest.padData = result.padData
        
        return try requestBody.serializedData()
    }
}
