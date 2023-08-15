//
//  LottieExtension.swift
//  MyAnimatedApp
//
//  Created by Abdul Karim Khan on 15/08/2023.
//

import Lottie
import SwiftUI

struct LottieView: UIViewRepresentable {
    
    var animationName: String
    let loopMode: LottieLoopMode
    
    
    //This method is used to update view, and in order to conform to protocol 'UIViewRepresentable', we have to add this func.
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: animationName)
        animationView.loopMode = loopMode
        animationView.play()
        animationView.contentMode = .scaleAspectFill
        return animationView
    }
}
