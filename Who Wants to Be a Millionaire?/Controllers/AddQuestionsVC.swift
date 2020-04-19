//
//  AddQuestionsVC.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 19.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class AddQuestionsVC: UIViewController {

    @IBOutlet weak var answer1: UITextView!
    @IBOutlet weak var answer2: UITextView!
    @IBOutlet weak var answer3: UITextView!
    @IBOutlet weak var answer4: UITextView!
    @IBOutlet weak var numberRightQuestions: UITextView!
    @IBOutlet weak var textView: UITextView!
    
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
        
    }
}






