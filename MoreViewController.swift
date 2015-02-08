//
//  MoreViewController.swift
//  Ybook
//
//  Created by yahoo on 1/31/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

import UIKit

class MoreViewController: UIViewController, UIActionSheetDelegate {

	@IBOutlet weak var scrollView: UIScrollView!
	
	@IBOutlet weak var scrolledImageView: UIImageView!
	
	var confirmActionSheet: UIActionSheet!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		scrollView.frame = CGRect(x: 0, y: 64, width: 320, height: 504)
		scrollView.contentSize = scrolledImageView.image!.size
		scrollView.contentSize.height += 50
		
		confirmActionSheet = UIActionSheet(title: "Log Out", delegate: self, cancelButtonTitle: "Cancel", destructiveButtonTitle: "Log Out")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
	@IBAction func onLogOut(sender: AnyObject) {
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
