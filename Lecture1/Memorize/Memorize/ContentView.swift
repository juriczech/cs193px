//
//  ContentView.swift
//  Memorize
//
//  Created by Bohdan Juříček on 17/10/2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            ForEach(0..<4) { index in
                CardView(isFaceUp: true)
            }
        }
        .foregroundColor(.orange)
        .padding()
        .font(.largeTitle)
    }
}

struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack {
            if isFaceUp {
                RoundedRectangle(cornerRadius:10).fill(Color.white)
                RoundedRectangle(cornerRadius:10).stroke(lineWidth: 3)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10).fill()
            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
