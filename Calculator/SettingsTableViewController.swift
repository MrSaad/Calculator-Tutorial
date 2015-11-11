//
//  SettingsTableViewController.swift
//  Calculator
//
//  Created by Saad Ahmed on 2015-11-10.
//  Copyright © 2015 Saad Ahmed. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController, YesNoCellDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 1
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("yesNoCell", forIndexPath: indexPath) as! YesNoTableViewCell
        
        cell.textLabel!.text = "Notifications"
        cell.delegate = self
        cell.settingOption = notificationSetting
        cell.populate()

        return cell
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.section == 0 && indexPath.row == 0{
            let cell = tableView.cellForRowAtIndexPath(indexPath) as! YesNoTableViewCell
            cell.setOption(!notificationSetting)
        }
    }

    func settingOptionChanged(toOption: Bool) {
        notificationSetting = toOption
        print("hello")
        self.tableView.reloadData()
    }
    
}
