//
//  QuestionsProvider.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 18.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation



class QuestionsProvider {
    
    private var gameQuestions = GameQuestions()
    
    lazy var questions: [Question] = getQuestions()
    
    
    func getRemainQuestionsCount() -> Int {
        return questions.count
    }
    
    func getQuestionsText(number: Int) -> String {
        return questions[number].questions
    }
    
    func getRightAnswerNumber(number: Int) -> Int {
        return questions[number].numbberOfAnswer
    }
    func getAnswerText(index: Int, number: Int) -> String {
        return questions[number].answers[index]
    }
    
    func getQuestions() -> [Question] {
        var question = gameQuestions.questionsCareTaker.getQuestions()
        if question.isEmpty {
            question = gameQuestions.gameQuestions
            return question
        } else {
            return question
        }
    }
  
}
