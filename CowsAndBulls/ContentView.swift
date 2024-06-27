//
//  ContentView.swift
//  CowsAndBulls
//
//  Created by Long Fong Yee on 27/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let guesses = Array(repeating: "1234", count: 20)
        
        VStack(spacing: 0) {
            HStack {
                TextField("Enter a guess...", text: .constant("1234"))
                Button("Go", action: submitGuess)
            }
            .padding()
            List(guesses, id: \.self) {guess in
                HStack {
                    Text(guess)
                    Spacer()
                    Text(result(for: guess))
                }
            }
        }
        .frame(width: 250)
        .frame(minHeight: 300, maxHeight: .infinity)
    }
    
    func submitGuess() {
        
    }
    
    func result(for guess: String) -> String {
        "Result"
    }
}


#Preview {
    ContentView()
}
