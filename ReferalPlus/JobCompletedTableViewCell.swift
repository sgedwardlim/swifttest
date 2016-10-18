//
//  JobCompletedTableViewCell.swift
//  ReferalPlus
//
//  Created by Edward on 10/17/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class JobCompletedTableViewCell: UITableViewCell {

    // MARK: Properties
    @IBOutlet weak var beforeImageView: UIImageView!
    @IBOutlet weak var afterImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var jobDescriptionLabel: UILabel!
    @IBOutlet weak var jobDescriptionTextView: UITextView!
    @IBOutlet weak var distanceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
