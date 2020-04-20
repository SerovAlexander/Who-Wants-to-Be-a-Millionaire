//
//  UIrextViewBorder.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 19.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit


func boarder(textView: UITextView) {
         textView.layer.cornerRadius = 5
         textView.layer.borderColor = UIColor.gray.withAlphaComponent(0.5).cgColor
         textView.layer.borderWidth = 0.5
         textView.clipsToBounds = true
}
    
        

    
