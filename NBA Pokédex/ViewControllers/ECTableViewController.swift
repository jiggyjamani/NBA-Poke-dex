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
//        self.table.delegate = (self as! UITableViewDelegate)
//        self.table.dataSource = self as UITableViewDataSource

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
    
//    let WteamsArray = [String](repeating: "Dallas Mavericks, Denver Nuggets, Golden State Warriors, Houston Rockets, Los Angeles Clippers, Los Angeles Lakers, Memphis Grizzlies, Minnesota Timberwolves, New Orleans Pelicans, Oklahoma City Thunder, Phoenix Suns, Portland Trailblazers, Sacramento Kings, San Antonio Spurs, Utah Jazz", count: 15)
//
//     func tableView2(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return WteamsArray.count
//    }
//
//    func tableView2(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "WesternConfTeams", for: indexPath)
//        cell.textLabel?.text = "\(indexPath.row) \(WteamsArray[indexPath.row])"
//        return cell
    
    }
    
    





