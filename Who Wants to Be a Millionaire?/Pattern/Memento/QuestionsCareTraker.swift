//
//  QuestionsCareTraker.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 19.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

class QuestionsCareTaker {
    
    
    private var encoder = JSONEncoder()
    private var decoder = JSONDecoder()
    
    private let key = "questions"
    
    
    func saveQuestions(questions: [Question]) {
        
        do {
            let data = try encoder.encode(questions)
            UserDefaults.standard.set(data, forKey: key)
            
        } catch  {
            print(error)
        }
    }
    
    func getQuestions()  -> [Question] {
           guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
           
           do {
               return try decoder.decode([Question].self, from: data)
           } catch {
               print(error)
               return []
           }
       }
}
