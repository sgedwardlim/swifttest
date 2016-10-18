//
//  JobCompleted.swift
//  ReferalPlus
//
//  Created by Edward on 10/17/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class JobCompleted {
    
    // MARK: Properties
    var beforeImage: UIImage
    var afterImage: UIImage
    var fullName: String
    var jobType: String
    var jobDescription: String
    var distance: String
    
    init?(beforeImage: UIImage,
          afterImage: UIImage,
          fullName: String,
          jobType: String,
          jobDescription: String,
          distance: String)
    {
        self.beforeImage = beforeImage
        self.afterImage = afterImage
        self.fullName = fullName
        self.jobType = jobType
        self.jobDescription = jobDescription
        self.distance = distance
    }
}
