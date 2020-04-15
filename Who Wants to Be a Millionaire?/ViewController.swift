//
//  ViewController.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 09.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
    }


    @IBAction func newGame(_ sender: Any) {
        let session = GameSession()
        Game.Shared.gameSession = session
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "NewGame") {
            guard let vc = segue.destination as? GameViewController else { return }
            vc.gameDelegate = self
        }
    }
}


extension ViewController: GameDelegate {
    func finishGame(rightAnswer: Int, Points: Int) {
        let session = Game.Shared.gameSession
        session.rightAnswerCount = rightAnswer
        session.gamePoint = Points
    }
}
