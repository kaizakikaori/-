//
//  LikedListTableViewController.swift
//  TableViewApp
//
//  Created by VERTEX21 on 2019/08/10.
//  Copyright © 2019 k-kougi. All rights reserved.
//

import UIKit

class LikedListTableViewController: UITableViewController {
    
     var likedName: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        print(likedName)

    }
    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return likedName.count
    }
    //
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = likedName[indexPath.row]
        return cell
    }
    
  }
