//
//  WCTableViewController.swift
//  NBA Pokédex
//
//  Created by Jamani Fowler on 4/28/20.
//  Copyright © 2020 Jamani Fowler. All rights reserved.
//

import UIKit

class WCTableViewController: UIViewController {

    
    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
    super.viewDidLoad()
        // Do any additional setup after loading the view
        
    }
    
    let WTeamsArray: [String] = ["Dallas Mavericks", "Denver Nuggets", "Golden State Warriors", "Houston Rockets", "Los Angeles Clippers", "Los Angeles Lakers", "Memphis Grizzlies", "Minnesota Timberwolves", "New Orleans Pelicans", "Oklahoma City Thunder", "Phoenix Suns", "Portland Trailblazers", "Sacramento Kings", "San Antonio Spurs", "Utah Jazz"]
}

extension WCTableViewController: UITableViewDataSource {


  func tableView(_ tableview: UITableView, numberOfRowsInSection section: Int) -> Int {
    return WTeamsArray.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "WesternConfTeams", for: indexPath)
    cell.textLabel?.text = "\(WTeamsArray[indexPath.row])"
    return cell
}
}
