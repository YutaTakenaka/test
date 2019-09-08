//
//  secondTableViewCell.swift
//  sample
//
//  Created by Yuta Takenaka on 2019/06/25.
//  Copyright © 2019 Yuta Takenaka. All rights reserved.
//

import UIKit

class secondTableViewCell: UITableViewCell {
    
    @IBOutlet var secondLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
