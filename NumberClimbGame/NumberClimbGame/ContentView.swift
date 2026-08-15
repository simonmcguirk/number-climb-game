//
//  ContentView.swift
//  NumberClimbGame
//
//  Created by Simon McGuirk on 15/08/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State var number: Int = 0
    @State var isIncreasing: Bool = true
    
    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()
            
            VStack {
                Text(String(number))
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .padding(.bottom, 20)
                Button {
                    updateNumber()
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
    
    func updateNumber() {
        let value = Int.random(in: 1...10)
        
        if isIncreasing {
            number += value
            if number >= 50 {
                isIncreasing = false
            }
        } else {
            number -= value
            if number <= 0 {
                isIncreasing = true
            }
        }
    }
}

#Preview {
    ContentView()
}
