//
//  ViewController.swift
//  pacr
//
//  Created by James Garcia on 11/21/15.
//  Copyright © 2015 Whereone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let time: Double = 10
    var selectedDistance = Distance(distance: 100, unit: .Meter, title: "100 Meters")
    var distances: [Distance] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        distances = Distance.getDefaultDistances()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return distances.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("distanceCell", forIndexPath: indexPath) as! distanceTableViewCell
        let distance = distances[indexPath.row]
        cell.distanceLabel.text = distance.title as String
        cell.timeLabel.text =  "\(distance.getDistanceMultiplier(selectedDistance) * time)"
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }



}

