//
//  JobViewController.swift
//  ReferalPlus
//
//  Created by Edward on 10/18/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class JobViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    // MARK: Properties
    @IBOutlet weak var jobTypeTextField: UITextField!
    @IBOutlet weak var jobDescriptionTextView: UITextView!
    @IBOutlet weak var beforeImageView: UIImageView!
    @IBOutlet weak var afterImageView: UIImageView!
    @IBOutlet weak var saveButton: UIBarButtonItem!
    // Keeps tracks of which image the user interacts with (before or after)
    var imageTypeSelected: ImageType = .before
    
    var job: Job?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createJobDescriptionBorder()
        
        if (job != nil) {
            
            jobTypeTextField.text = job?.jobType
            jobDescriptionTextView.text = job?.jobDescription
            beforeImageView.image = job?.beforeImage
            afterImageView.image = job?.afterImage
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if sender as AnyObject? === saveButton {
            
            let name = jobTypeTextField.text ?? ""
            let jobDescription = jobDescriptionTextView.text ?? ""
            let beforeImage = beforeImageView.image!
            let afterImage = afterImageView.image!
            
            // If job is not nil, it was passed from JobCompleteTableViewController
            if let job = self.job {
                // Leave all other values intact but modify new values of job
                job.jobType = name
                job.jobDescription = jobDescription
                job.beforeImage = beforeImage
                job.afterImage = afterImage
            } else {
                // Create a new instance of Job, User clicked on Add Button
                job = Job(jobType: name, jobDescription: jobDescription, beforeImage: beforeImage, afterImage: afterImage)
            }

        }
    }
 
    
    // MARK: UINavigationControllerDelegate
    
    func imagePickerControllerDidCancel(picker: UIImagePickerController) {
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        // The info dictionary contains multiple representations of the image, and this uses the original.
        let selectedImage = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        // Set photoImageView to display the selected image.
        // Checks to see which image should be updated with selected image from library
        if imageTypeSelected == .before {
            beforeImageView.image = selectedImage
        } else {
            afterImageView.image = selectedImage
        }
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: Actions

    @IBAction func selectBeforePhotoFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        if sender.view?.tag == ImageType.before.rawValue { imageTypeSelected = .before}
        presentImageLibrary()
    }
    
    @IBAction func selectAfterPhotoFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
        if sender.view?.tag == ImageType.after.rawValue { imageTypeSelected = .after}
        presentImageLibrary()
    }
    
    // MARK: Helper Functions
    func presentImageLibrary() {
        // Hide the keyboard
        jobTypeTextField.resignFirstResponder()
        jobDescriptionTextView.resignFirstResponder()
        
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate = self
        
        present(imagePickerController, animated: true, completion: nil)
    }
    
    func createJobDescriptionBorder() {
        let borderColor : UIColor = UIColor(red: 0.85, green: 0.85, blue: 0.85, alpha: 1.0)
        jobDescriptionTextView.layer.borderWidth = 0.5
        jobDescriptionTextView.layer.borderColor = borderColor.cgColor
        jobDescriptionTextView.layer.cornerRadius = 5.0
    }
    
    enum ImageType: Int {
        case before = 0
        case after = 1
    }
}















