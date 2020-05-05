//
//  TeamPlayerViewController.swift
//  NBA Pokédex
//
//  Created by Jamani Fowler on 5/4/20.
//  Copyright © 2020 Jamani Fowler. All rights reserved.
//

import Foundation
import UIKit

class TeamPlayers {
    var id: String!
    var teamName: String!
    
    init(teamName: String) {
        id = UUID().uuidString
        self.teamName = teamName
        
        let headers = [
            "x-rapidapi-host": "api-nba-v1.p.rapidapi.com",
            "x-rapidapi-key": "d5dfea4e10msh8e1174e0dfa8572p1b07e2jsn5311a0320948"
        ]

        let request = NSMutableURLRequest(url: NSURL(string: "https://api-nba-v1.p.rapidapi.com/players/teamId/null")! as URL,
                                                cachePolicy: .useProtocolCachePolicy,
                                            timeoutInterval: 10.0)
        request.httpMethod = "GET"
        request.allHTTPHeaderFields = headers

        let session = URLSession.shared
        let dataTask = session.dataTask(with: request as URLRequest, completionHandler: { (data, response, error) -> Void in
            if (error != nil) {
                print(error as Any)
            } else {
                let httpResponse = response as? HTTPURLResponse
                print(httpResponse as Any)
            }
        })

        dataTask.resume()
    }
}
