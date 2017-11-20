//
//  TableViewCell.swift
//  ToDoList
//
//  Created by Haidar Rais on 11/20/17.
//  Copyright © 2017 Haidar Rais. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var maintugas: UILabel!
    @IBOutlet weak var datetugas: UILabel!
    @IBOutlet weak var timetugas: UILabel!
    @IBOutlet weak var importanttugas: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
