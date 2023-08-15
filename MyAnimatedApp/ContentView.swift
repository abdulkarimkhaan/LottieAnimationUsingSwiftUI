//
//  ContentView.swift
//  MyAnimatedApp
//
//  Created by Abdul Karim Khan on 15/08/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var toggleAnimation = false
    
    var body: some View {
        VStack {
            Button  {
                toggleAnimation.toggle()
            } label: {
                Text("Toggle Animation")
                    .font(.title)
            }
            .padding(.bottom, 100)
            .animation(.easeIn, value: toggleAnimation)

            
            if toggleAnimation {
                LottieView(animationName: "animate", loopMode: .loop)
                    .frame(width: 200, height: 200)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
