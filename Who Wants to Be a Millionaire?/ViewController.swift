//
//  ViewController.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private var gameQuestions = GameQuestions()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.setNavigationBarHidden(true, animated: false)
      
    }


    @IBAction func newGame(_ sender: Any) {
        Game.shared.gameSession = GameSession()
        Game.shared.questionsProvider  = QuestionsProvider()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "NewGame") {
            guard let vc = segue.destination as? GameViewController else { return }
            vc.gameDelegate = self
            vc.numberOfQuestionStrategy = Game.shared.randomQ
        } else if (segue.identifier == "toSetting" ) {
            guard let vc = segue.destination as? SettingsTableVC else { return }
            vc.settingsDelegate = self
        }
    }
}


extension ViewController: GameDelegate {
    func finishGame(rightAnswer: Int, Points: Int) {
        let session = Game.shared.gameSession
        session.rightAnswerCount = rightAnswer
        session.gamePoint = Points
    }
}

extension ViewController: SettingsDelegate {
    func setDifficult(sequence: Bool) {
        if sequence == true {
            Game.shared.randomQ = RandomQuestions()
        } else {
            Game.shared.randomQ = SeriasQuestions()
        }
    }

}
    
    


