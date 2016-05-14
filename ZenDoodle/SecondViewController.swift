//
//  SecondViewController.swift
//  ZenDoodle
//
//  Copyright © 2016 ZenDoodle. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var embeddedSecondViewController: UIView!
    
    var drawingView: ACEDrawingView?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.drawingView = ACEDrawingView(frame: self.embeddedSecondViewController.frame);
        self.embeddedSecondViewController.addSubview(self.drawingView!)
}
    @IBAction func resetScreen(sender: AnyObject) {
        self.drawingView?.clear()
    }

    @IBAction func takeScreenShot(sender: UIButton) {
        
        UIGraphicsBeginImageContext(drawingView!.frame.size)
        drawingView!.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        
        let sourceImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(sourceImage,nil,nil,nil)
        
        
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
