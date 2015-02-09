//
//  FeedViewController.swift
//  Ybook
//
//  Created by yahoo on 1/29/15.
//  Copyright (c) 2015 yahoo. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var feedImage: UIImageView!
	@IBOutlet weak var spinner: UIActivityIndicatorView!
	
	var refreshControl: UIRefreshControl!
	
    override func viewDidLoad() {
        super.viewDidLoad()

        scrollView.contentSize = feedImage.image!.size
		scrollView.contentSize.height += 50
		
		refreshControl = UIRefreshControl()
		refreshControl.addTarget(self, action: "onRefresh", forControlEvents: UIControlEvents.ValueChanged)
		scrollView.insertSubview(refreshControl, atIndex: 0)
	}
	
	override func viewDidAppear(animated: Bool) {
		super.viewDidAppear(animated)
			
		delay(2, { () -> () in
			self.scrollView.alpha = 0
			self.scrollView.hidden = false
			self.spinner.hidden = true
			self.spinner.stopAnimating()
			
			UIView.animateWithDuration(0.5, animations: {
				self.scrollView.alpha = 1.0
			})
		})
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
	
	func onRefresh() {
		delay(2, {
			self.refreshControl.endRefreshing()
		})
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
