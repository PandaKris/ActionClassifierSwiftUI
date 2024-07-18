//
//  ContentView.swift
//  ActionClassifierSwiftUI
//
//  Created by Kristanto Sean on 18/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var cameraViewModel = CameraViewModel()
    
    var body: some View {
        VStack {
            CameraPreview(viewModel: cameraViewModel)
        }
        .background(.purple)
        .ignoresSafeArea()
    }
}

#Preview {
    ContentView()
}
