//
//  AddQuestionsVC.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 19.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class AddQuestionsVC: UIViewController {
    
    var game = GameQuestions()
    

    @IBOutlet weak var answer1: UITextView!
    @IBOutlet weak var answer2: UITextView!
    @IBOutlet weak var answer3: UITextView!
    @IBOutlet weak var answer4: UITextView!
    @IBOutlet weak var numberRightQuestions: UITextView!
    @IBOutlet weak var textView: UITextView!
    
    private var question = Question(questions: "", answers: [], numbberOfAnswer: 0)
    override func viewDidLoad() {
        
        boarder(textView: textView)
        boarder(textView: answer1)
        boarder(textView: answer2)
        boarder(textView: answer3)
        boarder(textView: answer4)
        boarder(textView: numberRightQuestions)
        super.viewDidLoad()

    }
    
    @IBAction func saveQuestions(_ sender: Any) {
        if textView.text != "Введите вопрос" && textView.text != "" {
            question.questions = textView.text
        } else {
            alert(title: "Введите вопрос!")
        }
        if answer1.text != "Ответ №1" && textView.text != ""  {
            question.answers.append(answer1.text)
        } else {
            alert(title: "Введите ответ №1")
        }
        if answer2.text != "Ответ №2" && textView.text != ""{
            question.answers.append(answer2.text)
        } else {
            alert(title: "Введите ответ №2")
        }
        if answer3.text != "Ответ №3" && textView.text != "" {
            question.answers.append(answer3.text)
        } else {
            alert(title: "Введите ответ №3")
        }
        if answer4.text != "Ответ №4" && textView.text != "" {
            question.answers.append(answer4.text)
        } else {
            alert(title: "Введите ответ №4")
        }
        if numberRightQuestions.text != "Номер правильного ответа" && textView.text != "" {
            question.numbberOfAnswer = (Int(numberRightQuestions.text) ?? 0) - 1
            print(question.numbberOfAnswer)
        } else {
            alert(title: "Введите номер правильного ответа ")
        }
        
        game.gameQuestions.append(question)
        game.questionsCareTaker.saveQuestions(questions: game.gameQuestions)

    }
    
    func alert(title: String) {
        let alertController = UIAlertController(title: title, message: "Ошибка", preferredStyle: .alert)
        let OKAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(OKAction)
        self.present(alertController, animated: true, completion: nil)
    }

}





