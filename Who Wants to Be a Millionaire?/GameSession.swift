//
//  GameSession.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 10.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

class GameSession {
    
    var answersCount = gameQuestions.count
    var rightAnswerCount = 0
    var gamePoint = Int()
    var pointForRightAnswer = 1000
    func onAnswerGive(index: Int) {
        
    }
}

class Game {
    var gameSession = GameSession()
    static let Shared = Game()
    private init() { }
}

