//
//  ThrillistViewController.swift
//  Ybook
//
//  Created by yahoo on 2/1/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

import UIKit

class ThrillistViewController: UIViewController {

	@IBOutlet weak var scrollView: UIScrollView!
	
	@IBOutlet weak var scrolledImageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		scrollView.contentSize = scrolledImageView.image!.size
		scrollView.contentSize.height += 100
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
