// The Swift Programming Language
// https://docs.swift.org/swift-book

import MobaiBiometric

extension MBCaptureSessionResult {
    public func serializedData() throws -> Data {
        var requestBody = Mobai_BiometricRequest()
        requestBody.recognitionRequest.probeImage = faceImage
        requestBody.padRequest.padData = padData
        
        return try requestBody.serializedData()
    }
}
