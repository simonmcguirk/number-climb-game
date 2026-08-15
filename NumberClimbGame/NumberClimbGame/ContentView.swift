//
//  ContentView.swift
//  NumberClimbGame
//
//  Created by Simon McGuirk on 15/08/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack {
                Text("0")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Button {
                    
                } label: {
                    Text("Tap Me!")
                }
                .font(.headline)
                .padding()
                .background(Color(.white))
                .foregroundColor(.black)
                .cornerRadius(10)
                .shadow(radius: 10)
            }
        }
    }
}

#Preview {
    ContentView()
}
