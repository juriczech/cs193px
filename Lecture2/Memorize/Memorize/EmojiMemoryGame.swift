//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Bohdan Juříček on 24/10/2020.
//

import Foundation

class EmojiMemoryGame {
    // Because there can be lot of pointers to this class/ViewModel, all of them could
    // screw up with the model. By changing it to private(set), we say that we can
    // only make changes to this variable from this class. Other views can access it though,
    // they just cannot set/write to it.
    private var game: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
        
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis = ["👍", "🤙", "💪"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIdex in
            return emojis[pairIdex]
        }
    }
        
    
    // MARK: - Access to the model
    var cards: Array<MemoryGame<String>.Card> {
        game.cards
    }
    
    // MARK: - Intent(s)
    func choose(card: MemoryGame<String>.Card) {
        game.choose(card: card)
    }
}
