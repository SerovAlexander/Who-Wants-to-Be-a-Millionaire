//
//  GameViewController.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class GameViewController: UIViewController {
    
    var qNumber = Int()
    var answerNumber = Int()
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var button: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(button)
        
        createQuestions()
    }
    
    func createQuestions() {
        
        if  gameQuestions.count > 0 {
            qNumber = 0
            questionLabel.text = gameQuestions[qNumber].questions
            answerNumber = gameQuestions[qNumber].numbberOfAnswer
            
            for i in 0..<button.count {
                button[i].setTitle(gameQuestions[qNumber].answers[i], for: UIControl.State.normal)
            }
            
            gameQuestions.remove(at: qNumber)
            
        } else {
            NSLog("Done!")
        }
    }
    
    @IBAction func button1(_ sender: Any) {
        if answerNumber == 0 {
            createQuestions()
        } else {
            NSLog("Wrong")
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if answerNumber == 1 {
                   createQuestions()
               } else {
                   NSLog("Wrong")
               }
    }
    
    @IBAction func button3(_ sender: Any) {
        if answerNumber == 2 {
                   createQuestions()
               } else {
                   NSLog("Wrong")
               }
    }
    
    @IBAction func button4(_ sender: Any) {
        if answerNumber == 3 {
                   createQuestions()
               } else {
                   NSLog("Wrong")
               }
    }
    
}
