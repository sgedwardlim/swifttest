//
//  Job.swift
//  ReferalPlus
//
//  Created by Edward on 10/18/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class Job {
    
    // MARK: Properties
    var fullName: String?
    var distance: String?
    var jobType: String
    var jobDescription: String
    var beforeImage: UIImage
    var afterImage: UIImage
    
    init?(jobType: String, jobDescription: String, beforeImage: UIImage, afterImage: UIImage) {
        self.jobType = jobType
        self.jobDescription = jobDescription
        self.beforeImage = beforeImage
        self.afterImage = afterImage
    }
    
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
