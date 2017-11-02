//
//  DadViewController.swift
//  iKid
//
//  Created by Jimmy Nguyen on 10/31/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import UIKit

class DadViewController: UIViewController {
    
    @IBOutlet weak var dadJokeLabel: UILabel!
    @IBOutlet var dadView: UIView!
    
    var flag = false
    
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
            self.dadJokeLabel.text = "I'm slowly getting over it."
            sender.setTitle("Back", for: UIControlState.normal)
        } else {
            flip = .transitionFlipFromLeft
            self.flag = false
            self.dadJokeLabel.text = "I have a fear of speed bumps..."
            sender.setTitle("Next", for: UIControlState.normal)
        }
        UIView.transition(with: self.dadView, duration: 0.5, options: flip, animations: nil, completion: nil)
    }
}
