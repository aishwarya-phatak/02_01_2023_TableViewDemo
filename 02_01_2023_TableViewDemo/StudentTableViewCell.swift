//
//  StudentTableViewCell.swift
//  02_01_2023_TableViewDemo
//
//  Created by Vishal Jagtap on 24/01/23.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var firstNameTextField: UITextField!
    
    @IBOutlet weak var lastNameTextField: UITextField!
    
    @IBOutlet weak var batchIdLabel: UILabel!
    
    @IBOutlet weak var rollNumberLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
