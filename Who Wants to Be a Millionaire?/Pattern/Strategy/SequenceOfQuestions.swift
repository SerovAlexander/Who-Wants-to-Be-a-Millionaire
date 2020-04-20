//
//  GameStrategy.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 18.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit

protocol SequenceOfQuestions {
    func getQuestionsNumber (array: [Question]) -> Int
}

