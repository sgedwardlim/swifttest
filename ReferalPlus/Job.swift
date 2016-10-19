//
//  Job.swift
//  ReferalPlus
//
//  Created by Edward on 10/18/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class Job {
    
    var jobType:        String
    var jobDescription: String
    var beforeImage:    UIImage
    var afterImage:     UIImage
    
    init?(jobType: String, jobDescription: String, beforeImage: UIImage, afterImage: UIImage) {
        self.jobType = jobType
        self.jobDescription = jobDescription
        self.beforeImage = beforeImage
        self.afterImage = afterImage
    }
    
}
