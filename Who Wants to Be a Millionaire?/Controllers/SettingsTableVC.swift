//
//  SettingsTableVC.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 18.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit


protocol SettingsDelegate: class {
    func setDifficult (sequence: Bool)
}



class SettingsTableVC: UITableViewController {
    
    weak var settingsDelegate: SettingsDelegate?

    @IBOutlet weak var difficultySwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func changeDif(_ sender: Any) {
        settingsDelegate?.setDifficult(sequence: difficultySwitch.isOn)
    }
    
}
