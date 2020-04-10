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
        self.navigationItem.setHidesBackButton(true, animated: false) 
        createQuestions()
    }
    
    @IBAction func button1(_ sender: Any) {
        if answerNumber == 0 {
            createQuestions()
        } else {
            pushVC()
        }
    }
    
    @IBAction func button2(_ sender: Any) {
        if answerNumber == 1 {
            createQuestions()
        } else {
            pushVC()
        }
    }
    
    @IBAction func button3(_ sender: Any) {
        if answerNumber == 2 {
            createQuestions()
        } else {
            pushVC()
        }
    }
    
    @IBAction func button4(_ sender: Any) {
        if answerNumber == 3 {
            createQuestions()
        } else {
            pushVC()
        }
    }
    
    
    
    // MARK: Functions
    
    func createQuestions() {
        
        if  gameQuestions.count > 0 {
            qNumber = Int(arc4random_uniform(UInt32(gameQuestions.count)))
            questionLabel.text = gameQuestions[qNumber].questions
            answerNumber = gameQuestions[qNumber].numbberOfAnswer
            
            for i in 0..<button.count {
                button[i].setTitle(gameQuestions[qNumber].answers[i], for: UIControl.State.normal)
            }
            
            gameQuestions.remove(at: qNumber)
            
        } else {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
            vc.text = "Congradulations!!!"
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    func pushVC(){
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "FinalViewController") as! FinalViewController
        vc.text = "Loser"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

