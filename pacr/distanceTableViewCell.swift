//
//  distanceTableViewCell.swift
//  pacr
//
//  Created by James Garcia on 11/21/15.
//  Copyright © 2015 Whereone. All rights reserved.
//

import UIKit

class distanceTableViewCell: UITableViewCell {
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
