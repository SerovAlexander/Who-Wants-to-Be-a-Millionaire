//
//  GameViewController.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

protocol GameDelegate: class {
    func finishGame(rightAnswer: Int, Points: Int)
}

class GameViewController: UIViewController {
    
    var numberOfQuestionStrategy: SequenceOfQuestions = RandomQuestions()
    
    weak var gameDelegate: GameDelegate?
    
    var provider = Game.shared.questionsProvider
    
    var qNumber = Int()
    var rightAnswerNumber = Int()
    var rightAnswerCount = 0
    var righAnswerCount = 0
    var gamePoint = 0
    var point = 1000
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var button: [UIButton]! {
        didSet {
            for button in button {
                button.layer.cornerRadius = 25
                button.layer.masksToBounds = true
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        createQuestions()
    }
    
    // Проверка ответа игрока
    @IBAction func button1(_ sender: Any) {
        if rightAnswerNumber == 0 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, Points: gamePoint)
            Game.shared.saveResult(result: gamePoint)
            pushVC()
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if rightAnswerNumber == 1 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, Points: gamePoint)
            Game.shared.saveResult(result: gamePoint)
            pushVC()
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if rightAnswerNumber == 2 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, Points: gamePoint)
            Game.shared.saveResult(result: gamePoint)
            pushVC()
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if rightAnswerNumber == 3 {
            rightAnswerCount += 1
            gamePoint += point
            createQuestions()
        } else {
            self.gameDelegate?.finishGame(rightAnswer: rightAnswerCount, Points: gamePoint)
            Game.shared.saveResult(result: gamePoint)
            pushVC()
        }
    }
    
    // MARK: Functions
    
    // Функция создания вопроса
    func createQuestions() {
        
        if provider.getRemainQuestionsCount() > 0 {
            print(provider.getRemainQuestionsCount())
            qNumber = numberOfQuestionStrategy.getQuestionsNumber(array: provider.questions )
            questionLabel.text = provider.getQuestionsText(number: qNumber)
            rightAnswerNumber = provider.getRightAnswerNumber(number: qNumber)
            for i in 0..<button.count {
                button[i].setTitle(provider.getAnswerText(index: i, number: qNumber), for: UIControl.State.normal)
            }
            provider.questions.remove(at: qNumber)

        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            vc.text = "Congradulations!!!"
            vc.resultText = "Вы заработали - \(gamePoint)"
            Game.shared.saveResult(result: gamePoint)
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    // Функция вызова FinalViewController
    func pushVC(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        vc.text = "Loser"
        vc.resultText = "Вы заработали - \(gamePoint)"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

