//
//  ViewController.swift
//  Postcard
//
//  Created by Daniel Pratt on 9/10/14.
//  Copyright (c) 2014 blaumagier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // When button is pressed, change the label to message sent
        messageLabel.hidden = false
        nameLabel.hidden = false
        var name = enterNameTextField.text
        nameLabel.text = "Postcard sent to " + name
        messageLabel.text = enterMessageTextField.text;
        messageLabel.textColor = UIColor.redColor()
        enterNameTextField.text = ""
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        nameLabel.textColor = UIColor.blueColor()
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }

}

