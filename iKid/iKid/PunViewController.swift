//
//  PunViewController.swift
//  iKid
//
//  Created by Jimmy Nguyen on 10/31/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import UIKit

class PunViewController: UIViewController {
    
    
    @IBOutlet var punViewController: UIView!
    @IBOutlet weak var punJokeLabel: UILabel!
    @IBOutlet weak var punJokeImage: UIImageView!
    
    var flag = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func nextBtn(_ sender: UIButton) {
        var flip: UIViewAnimationOptions = .transitionFlipFromRight
        if (!flag) {
            flip = .transitionFlipFromRight
            self.flag = true
            self.punJokeLabel.text = "I never knew my real ladder..."
            sender.setTitle("Back", for: UIControlState.normal)
            self.punJokeImage.isHidden = true
        } else {
            flip = .transitionFlipFromLeft
            self.flag = false
            self.punJokeLabel.text = "This is my step ladder"
            sender.setTitle("Next", for: UIControlState.normal)
            self.punJokeImage.isHidden = false
        }
        UIView.transition(with: self.punViewController, duration: 0.5, options: flip, animations: nil, completion: nil)
    }
}

