//
//  ViewController.swift
//  02_01_2023_TableViewDemo
//
//  Created by Vishal Jagtap on 23/01/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var studentNamesTableView: UITableView!
    var students : [String] = ["Tejas","Sachin","Yuvaraj","Pooja1","Pooja2", "Tushar", "Pratiksha"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentNamesTableView.delegate = self
        studentNamesTableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         return 7
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    /*
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.studentNamesTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = "Tejas"
        cell.backgroundColor = UIColor.cyan
        return cell ?? UITableViewCell()
    }*/
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell =  self.studentNamesTableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = students[indexPath.row]
        print("\(students[indexPath.row]) -- \(indexPath.section)")
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        50.0
    }
}

