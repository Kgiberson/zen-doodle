//
//  ViewController.swift
//  ZenDoodle
//
//  Created by Apprentice on 5/13/16.
//  Copyright © 2016 ZenDoodle. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var pauseButtonOutlet: UIButton!
    @IBOutlet weak var playButtonOutlet: UIButton!
    
    var player = AVAudioPlayer()
    let url:NSURL = NSBundle.mainBundle().URLForResource("KatyZenDoodle2", withExtension: "aiff")!
    func sound() {
        do {
            player = try AVAudioPlayer(contentsOfURL: url, fileTypeHint: nil)
        }
        catch let error as NSError { print(error.description) }
        player.prepareToPlay()
        player.play()
    }
    
    func pausePlayer() {
        if !player.playing {
            player.play()
            pauseButtonOutlet.setImage(UIImage(named: "PauseButton.png"), forState: UIControlState.Normal)
        } else {
            player.numberOfLoops = 0
            player.pause()
            pauseButtonOutlet.setImage(UIImage(named: "PlayButton.png"), forState: UIControlState.Normal)
        }
    }

    override func viewDidLoad() {
        self.view.backgroundColor = UIColor(red: 0.922, green: 0.898, blue: 0.898, alpha: 1)
        super.viewDidLoad()
        pauseButtonOutlet.hidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func supportedInterfaceOrientations() -> UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.Portrait
    }
    @IBAction func playButton(sender: AnyObject) {
        playButtonOutlet.hidden = true
        pauseButtonOutlet.hidden = false
        sound()
    }

    @IBAction func pauseButton(sender: AnyObject) {
        pausePlayer()
    }

}

//
//class ACEDrawingView: UIViewController {
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//}
