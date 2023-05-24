//
//  RowItemCell.swift
//  BVN_12
//
//  Created by Mac on 24/05/2023.
//

import UIKit

class RowItemCell: UITableViewCell {

    @IBOutlet weak var iconViewContainer: UIView!
    @IBOutlet weak var iconView: UIImageView!
    @IBOutlet weak var labelView: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        iconViewContainer.layer.cornerRadius = 8
        iconViewContainer.backgroundColor = UIColor(red: 0.96, green: 0.96, blue: 0.96, alpha: 1.00)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
