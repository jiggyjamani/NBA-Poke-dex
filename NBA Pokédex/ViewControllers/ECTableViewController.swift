//
//  ECTableViewController.swift
//  NBA Pokédex
//
//  Created by Jamani Fowler on 4/28/20.
//  Copyright © 2020 Jamani Fowler. All rights reserved.
//

import UIKit

class ECTableViewController: UIViewController {

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    let teamsArray: [String] = ["Atlanta Hawks", "Boston Celtics", "Brooklyn Nets", "Charlotte Hornets", "Chicago Bulls", "Cleveland Cavaliers", "Detroit Pistons", "Indiana Pacers", "Miami Heat", "Milwaukee Bucks", "New York Knicks", "Orlando Magic", "Philadelphia 76ers", "Toronto Raptors", "Washington Wizards"]
}

    extension ECTableViewController: UITableViewDataSource {
    

      func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "EasternConfTeams", for: indexPath)
        cell.textLabel?.text = "\(teamsArray[indexPath.row])"
        return cell
    }
    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) -> UITableViewCell {
//
    





//}
