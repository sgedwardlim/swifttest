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
    var imageTypeSelected: ImageType = .before
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        createJobDescriptionBorder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
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















