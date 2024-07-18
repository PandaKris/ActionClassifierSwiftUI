//
//  CameraViewModel.swift
//  ActionClassifierSwiftUI
//
//  Created by Kristanto Sean on 18/07/24.
//

import Foundation
import AVFoundation

@Observable
class CameraViewModel {
    
    let captureSession = AVCaptureSession()
    
    
    init() {
        guard let captureDevice = AVCaptureDevice.default(for: .video),
              let input = try? AVCaptureDeviceInput(device: captureDevice) else {
            return
        }

        // set session preset, variable to adjust the quality level of data output
        captureSession.sessionPreset = AVCaptureSession.Preset.high
        captureSession.addInput(input)
    }
    
    func startCaptureSession() {
        captureSession.startRunning()
    }
}
