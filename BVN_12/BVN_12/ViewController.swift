//
//  ViewController.swift
//  BVN_12
//
//  Created by Mac on 24/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var nameUser: UILabel!
    @IBOutlet weak var positionUser: UILabel!
    
    @IBOutlet weak var containerUserView: UIView!
    @IBOutlet weak var containerActionView: UIView!
    
    @IBOutlet weak var tableView1: UITableView!
    @IBOutlet weak var tableView2: UITableView!
    
    @IBOutlet weak var bottomButton: UIView!
    
    let dataTable1: [RowItem] = [
        RowItem(label: "Personal Data", image: "person"),
        RowItem(label: "Settings", image: "person"),
        RowItem(label: "E-Statement", image: "person"),
        RowItem(label: "Refferal Code", image: "person"),
        RowItem(label: "FAQs", image: "userImage.png"),
        RowItem(label: "Our Handbook", image: "userImage.png"),
        RowItem(label: "Community", image: "userImage.png"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageUser.layer.cornerRadius = 8
        
        addBorder(view: containerUserView)
        addBorder(view: containerActionView)
        
        tableView1.dataSource = self
        tableView1.register(UINib(nibName: "RowItemCell", bundle: nil), forCellReuseIdentifier: "tableView1Identifier")
        
        bottomButton.layer.cornerRadius = 16
    }
    
    
    func addBorder(view: UIView) {
        let bottomBorder = CALayer()
                bottomBorder.frame = CGRect(x: 0.0, y: view.frame.size.height-1, width: view.frame.width, height: 1.0)
                bottomBorder.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        view.layer.addSublayer(bottomBorder)
    }

}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTable1.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let data = dataTable1[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableView1Identifier", for: indexPath) as! RowItemCell
        cell.labelView.text = data.label
        cell.iconView.image = UIImage(named: data.image)
    
        return cell
    }
}


