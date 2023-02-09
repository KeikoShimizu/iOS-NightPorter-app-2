//
//  ViewController.swift
//  Night Porter App 2
//
//  Created by laptop on 2023-02-07.
//

import UIKit

//What happen when the row is selected!
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    // Table View Delegate Methods
    //When you click one of row, the row number is displayed in console in xCode "You selected row5 in section 0"
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("You selected row\(indexPath.row) in section \(indexPath.section)")
    }
    
    
    
    
    //Table view data sause methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // we have 3 section for dailu, weekly and monthly tasks
        return 3
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return dailyTasks.count
        case 1:
            return weeklyTasks.count
        case 2:
            return monthlyTasks.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = dailyTasks[indexPath.row]
        case 1:
            cell.textLabel?.text = weeklyTasks[indexPath.row]
        case 2:
            cell.textLabel?.text = monthlyTasks[indexPath.row]
        default:
            cell.textLabel?.text = "This souldn't happen"
        }
        return cell
    }
    
    //creating header for each section!
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch section {
        case 0:
            return "Daily Tasks"
        case 1:
            return "Weekly Tasks"
        case 2:
            return "Monthly Tasks"
        default:
            return nil
        }
    }
    
    //Create [String] arrays of tasks
    let dailyTasks = ["Check all windows",
                      "Check all doors",
                      "is the boiler fueled?",
                      "Check the mail box?",
                      "Empty trash containers",
                      "if freezing, check water pipes",
                      "Document \"strange and unusual\" accurrences",
    ]
    
    let weeklyTasks = ["Check inside all cabins",
                       "Flush all lavatories in cabins",
                       "Walk the perimeter of property",
                        
    ]
    
    let monthlyTasks = ["test security alarm",
                        "Test motion detectors",
                        "test smoke alarms"
                        
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

