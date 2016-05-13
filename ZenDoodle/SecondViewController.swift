//
//  SecondViewController.swift
//  ZenDoodle
//
//  Copyright © 2016 ZenDoodle. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var drawingView: ACEDrawingView?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.drawingView = ACEDrawingView(frame: self.view.frame);
        self.view.addSubview(self.drawingView!)
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
