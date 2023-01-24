//
//  StudentViewController.swift
//  02_01_2023_TableViewDemo
//
//  Created by Vishal Jagtap on 24/01/23.
//

import UIKit

class StudentViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var studentTableView: UITableView!
    var firstName : String = ""
    var lastName : String = ""
    var rollNumbers = [1,2,3,4,5]
    var batchId : Int = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()

        studentTableView.dataSource = self
        studentTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rollNumbers.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let studentTableViewCell = self.studentTableView.dequeueReusableCell(withIdentifier: "StudentTableViewCell", for: indexPath) as! StudentTableViewCell
        firstName =  studentTableViewCell.firstNameTextField.text!
        print(firstName)
        
        lastName = studentTableViewCell.lastNameTextField.text!
        print(lastName)
        
        studentTableViewCell.rollNumberLabel.text = String(rollNumbers[indexPath.row])
        
        studentTableViewCell.batchIdLabel.text = String(batchId)
        return studentTableViewCell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120.0
    }
    //Design of Custom Cell done on StudentTableView on StudentViewController -- rigid connection between deisgn on View Controller and class file - reusability is difficult
}
