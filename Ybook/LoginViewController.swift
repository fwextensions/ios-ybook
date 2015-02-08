//
//  LoginViewController.swift
//  Ybook
//
//  Created by yahoo on 2/5/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UIAlertViewDelegate {

	@IBOutlet weak var loginButton: UIButton!
	
	@IBOutlet weak var usernameField: UITextField!
	
	@IBOutlet weak var passwordField: UITextField!
	
	@IBOutlet weak var loggingInButton: UIImageView!
	
	@IBOutlet weak var spinner: UIActivityIndicatorView!
	
	var loginAlert: UIAlertView!
	
	override func viewDidLoad() {
        super.viewDidLoad()
		loginButton.enabled = false
		loggingInButton.hidden = true
		spinner.stopAnimating()
		
		loginAlert = UIAlertView(title: "Umm, no", message: "Your username or password is wrong, idiot.", delegate: self, cancelButtonTitle: "OK")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func onChanged(sender: AnyObject) {
		loginButton.enabled = (!usernameField.text.isEmpty && !passwordField.text.isEmpty)
	}

	@IBAction func onLoginClicked(sender: AnyObject) {
		spinner.startAnimating()
		loggingInButton.hidden = false
		
		delay(2, { () -> () in
			self.spinner.stopAnimating()
			self.loggingInButton.hidden = true
			
			if (self.passwordField.text != "123") {
				var alertView = UIAlertView(title: "Umm, no", message: "Your username or password is wrong, idiot.", delegate: self, cancelButtonTitle: "OK")
				self.loginAlert.show()
			} else {
				self.performSegueWithIdentifier("loginPush", sender: self)
			}
		})
	}
	
	func alertView(alertView: UIAlertView!, clickedButtonAtIndex buttonIndex: Int) {
	}
	
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
