//
//  FinalViewController.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 10.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    var text: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: false)
        textLabel.text = text

    }


}
