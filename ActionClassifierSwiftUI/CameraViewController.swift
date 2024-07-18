//
//  CameraViewController.swift
//  ActionClassifierSwiftUI
//
//  Created by Kristanto Sean on 18/07/24.
//

import UIKit
import SwiftUI
import AVFoundation

class CameraViewController: UIViewController {
    
    var videoViewModel: CameraViewModel! = nil
    
    var previewLayer: AVCaptureVideoPreviewLayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVideoPreview()
    }
    
    private func setupVideoPreview() {
        videoViewModel.startCaptureSession()
        previewLayer = AVCaptureVideoPreviewLayer(session: videoViewModel.captureSession)
        
        guard let previewLayer = previewLayer else { return }
        
        view.layer.addSublayer(previewLayer)
        previewLayer.frame = view.frame
    }
}

struct CameraPreview: UIViewControllerRepresentable {
    @Bindable var viewModel: CameraViewModel
    
    func makeUIViewController(context: Context) -> CameraViewController {
        let viewController = CameraViewController()
        viewController.videoViewModel = viewModel
        return viewController
    }
    
    func updateUIViewController(_ viewController: CameraViewController, context: Context) {
    }
}

