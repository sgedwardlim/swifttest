//
//  ViewController.swift
//  ReferalPlus
//
//  Created by Edward on 10/14/16.
//  Copyright © 2016 Edward. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Properties
    @IBOutlet weak var recipientEmailTextField: UITextField!
    @IBOutlet weak var prepareReferalButton: UIButton!
    @IBOutlet weak var addNewReferalButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        prepareReferalButton.layer.cornerRadius = 10
        addNewReferalButton.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let jobCompletedViewController = segue.destination as! JobCompletedTableViewController
        jobCompletedViewController.emailRecipient = recipientEmailTextField.text
    }

}

