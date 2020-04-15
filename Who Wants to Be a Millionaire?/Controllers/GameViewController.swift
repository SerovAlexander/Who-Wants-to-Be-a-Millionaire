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
    
    weak var gameDelegate: GameDelegate?
    
    var qNumber = Int()
    var rightAnswerNumber = Int()
    var rightAnswerCount = 0
    var righAnswerCount = 0
    var gamePoint = 0
    var point = 1000
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
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
            pushVC()
        }
    }

// MARK: Functions
// Функция создания вопроса
    func createQuestions() {
        
        if  gameQuestions.count > 0 {
            qNumber = Int(arc4random_uniform(UInt32(gameQuestions.count)))
            questionLabel.text = gameQuestions[qNumber].questions
            rightAnswerNumber = gameQuestions[qNumber].numbberOfAnswer
            
            for i in 0..<button.count {
                button[i].setTitle(gameQuestions[qNumber].answers[i], for: UIControl.State.normal)
            }
            
            gameQuestions.remove(at: qNumber)
            
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            vc.text = "Congradulations!!!"
            vc.resultText = "Вы заработали - \(gamePoint)"
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

