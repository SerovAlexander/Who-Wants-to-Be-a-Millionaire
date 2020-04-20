//
//  GameSession.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 10.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

class GameSession {
    
//    var answersCount = 0
    var rightAnswerCount = 0
    var gamePoint = Int()
    var pointForRightAnswer = 1000
}

// SingleTon
class Game {
    
    var gameSession = GameSession()
    var questionsProvider = QuestionsProvider()
    var randomQ: SequenceOfQuestions = RandomQuestions()
    static let Shared = Game()
    private init() {
        self.results = gameResultCareTaker.getResult()
        
    }
    
    private(set) var results: [GameResult] {
        didSet {
            gameResultCareTaker.save(gameResult: self.results)
        }
    }
    
    private let gameResultCareTaker = GameResultCareTaker()
    
    func saveResult(result: Int) {
       let result = GameResult(date: Date(), gamePoint: result)
       results.append(result)
    }
    
    
}

struct GameResult: Codable {
    var date = Date()
    var gamePoint = Int()
    
}
