//
//  HomeViewController.swift
//  02_01_2023_TableViewDemo
//
//  Created by Vishal Jagtap on 24/01/23.
//

import UIKit

class HomeViewController: UIViewController,UITableViewDataSource,UITableViewDelegate{
    
    @IBOutlet weak var productTableView: UITableView!
    var productIds = [10,11,12,13,14]
    var productPrice = [40,45,34,89,80]
    var productTitle = ["P1","P2","P3","P4","P5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        productTableView.dataSource = self
        productTableView.delegate = self
        
        //Register Xib
        
        let uiNib = UINib(nibName: "ProductTableViewCell", bundle: nil)
        self.productTableView.register(uiNib, forCellReuseIdentifier: "ProductTableViewCell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        productIds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let productTableViewCell = self.productTableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell", for: indexPath) as? ProductTableViewCell
        
        productTableViewCell?.productIdLabel.text = String(productIds[indexPath.row])
        productTableViewCell?.productPriceLabel.text = String(productPrice[indexPath.row])
        productTableViewCell?.productTitleLabel.text = productTitle[indexPath.row]
        
        return productTableViewCell ?? UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        110.0
    }
    //ProductTableViewCell & its design file completely separate - totally reusable where ever you register xib

}
