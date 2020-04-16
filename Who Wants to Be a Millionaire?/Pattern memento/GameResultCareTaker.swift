//
//  GameResultCareTaker.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 16.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

final class GameResultCareTaker {
    
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "results"
    
    
    func save(gameResult: [GameResult]) {
        do {
            let data = try encoder.encode(gameResult)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func getResult()  -> [GameResult] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return [] }
        
        do {
            return try decoder.decode([GameResult].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
    
}
