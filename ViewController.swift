//
//  ViewController.swift
//  Project7
//
//  Created by Marko Zivanovic on 21.2.23..
//

import UIKit

class ViewController: UITableViewController {
    
    var petitions = [Petition]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let urlString = "https://www.hackingwithswift.com/samples/petitions-1.json"
        
        if let url = URL(String: urlString) {
            if let data = try? Data(contentsOf: url) {
                //MARK: Ew are ok to parse that data
            }
        }
    }
    
    func parse(json: Date) {
        let decoder = JSONDecoder()
        
        if let jsonPetitions = try? decoder.decode(Petitions.self, from: json)
            petitions = jsonPetitons.result
            
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return petitions.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell =tableView?.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Title"
        cell.detailTextLabel?.text = "Subtitle"
        return cell
    }

}

