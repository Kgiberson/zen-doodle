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
        
        self.view.backgroundColor = UIColor(red: 0.922, green: 0.898, blue: 0.898, alpha: 1)        // app
        self.drawingView = ACEDrawingView(frame: self.embeddedSecondViewController.frame);
        
        self.drawingView!.backgroundColor = UIColor(red: 0.922, green: 0.898, blue: 0.898, alpha: 1) // canvas
        self.embeddedSecondViewController.addSubview(self.drawingView!)
        
    }
    
    
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    
    @IBAction func resetScreen(sender: AnyObject) {
        self.drawingView?.clear()
    }

    @IBAction func undoButton(sender: UIButton) {
        self.drawingView?.undoLatestStep()
    }
    
    @IBAction func takeScreenShot(sender: UIButton) {
        
        UIGraphicsBeginImageContext(drawingView!.frame.size)
        drawingView!.layer.renderInContext(UIGraphicsGetCurrentContext()!)
        
        let sourceImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        UIImageWriteToSavedPhotosAlbum(sourceImage,nil,nil,nil)
        
    }
    
    
    
//    Draw Space Notification Buttons
    
    @IBAction func hubButton1(sender: UIButton) {
        let hud = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        
        hud.mode = MBProgressHUDMode.Text
        
        hud.detailsLabel.text = "Draw your ZenDoodle in this space"
        hud.hideAnimated(true, afterDelay: 1.5)
    }
    
    @IBAction func hubButton2(sender: UIButton) {
        let hud = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        
        hud.mode = MBProgressHUDMode.Text
        
        hud.detailsLabel.text = "Draw your ZenDoodle in this space"
        hud.hideAnimated(true, afterDelay: 1.5)
    }
    
    @IBAction func hubButton(sender: UIButton) {
        
        let hud = MBProgressHUD.showHUDAddedTo(self.view, animated: true)
        
        hud.mode = MBProgressHUDMode.Text
        
        hud.detailsLabel.text = "Draw your ZenDoodle in this space"
        hud.hideAnimated(true, afterDelay: 1.5)
        
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
