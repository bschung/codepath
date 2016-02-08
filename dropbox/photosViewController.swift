//
//  photosViewController.swift
//  dropbox
//
//  Created by Brenda Chung on 2/7/16.
//  Copyright © 2016 Brenda Chung. All rights reserved.
//

import UIKit

class photosViewController: UIViewController {

    @IBOutlet weak var photosScrollView: UIScrollView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photosScrollView.contentSize = CGSize(width: 320, height: 725)

        // Do any additional setup after loading the view.
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
