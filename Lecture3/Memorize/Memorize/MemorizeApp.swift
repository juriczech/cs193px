//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Bohdan Juříček on 17/10/2020.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            MemoryGameView(viewModel: game)
        }
    }
}
