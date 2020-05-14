//
//  RandomQuestions.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 18.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation
import UIKit

final class RandomQuestions: SequenceOfQuestions {
    func getQuestionsNumber(array: [Question]) -> Int {
        let qNumber = Int.random(in: 0...array.count-1)
        return qNumber
    }
}
