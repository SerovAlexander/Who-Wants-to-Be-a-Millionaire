//
//  ResultsTableVC.swift
//  Who Wants to Be a Millionaire?
//
//  Created by Aleksandr Serov on 15.04.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ResultsTableVC: UITableViewController {
    


    override func viewDidLoad() {
        super.viewDidLoad()

    
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return Game.Shared.results.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultCell", for: indexPath)
        let result = Game.Shared.results[indexPath.row]
        let date = DateFormatter()
        date.dateStyle = .short
        cell.textLabel?.text = "Дата: \(date.string(from: result.date)) - \(result.gamePoint)"
        return cell
    }

}
