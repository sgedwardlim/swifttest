//
//  JobCompletedTableViewController.swift
//  ReferalPlus
//
//  Created by Edward on 10/17/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class JobCompletedTableViewController: UITableViewController {

    // MARK: Properties
    var jobsCompleted = [JobCompleted]()
    var emailRecipient :String?
    
    func loadSampleData() {
        
        let beforeImg = UIImage(named: "defaultImage")!
        let afterImg = beforeImg
        let job1 = JobCompleted(beforeImage: beforeImg, afterImage: afterImg, fullName: "Edward Lim", jobType: "Oak Trees", jobDescription: "Prune and trimmed the oak trees", distance: "0.7 miles")!
        
        let job2 = JobCompleted(beforeImage: beforeImg, afterImage: afterImg, fullName: "Edward Lim", jobType: "Palm Trees", jobDescription: "Prune and trimmed the palm trees", distance: "0.7 miles")!
        
        let job3 = JobCompleted(beforeImage: beforeImg, afterImage: afterImg, fullName: "Edward Lim", jobType: "Deodar Trees", jobDescription: "Prune and trimmed the deodar cedar trees", distance: "0.8 miles")!
        
//        jobsCompleted += [job1, job2, job3]
        jobsCompleted.append(job1)
        jobsCompleted.append(job2)
        jobsCompleted.append(job3)
        
        print("user email: " + emailRecipient!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Load the sample data.
        loadSampleData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return jobsCompleted.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "JobCompletedTableViewCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! JobCompletedTableViewCell
        
        let job = jobsCompleted[indexPath.row]
        
        // Configure the cell...
        cell.beforeImageView.image = job.beforeImage
        cell.afterImageView.image = job.afterImage
        cell.fullNameLabel.text = job.fullName
        cell.jobTypeLabel.text = job.jobType
        cell.jobDescriptionTextView.text = job.jobDescription
        cell.distanceLabel.text = job.distance

        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
