//
//  GoodViewController.swift
//  iKid
//
//  Created by Jimmy Nguyen on 10/31/17.
//  Copyright © 2017 Jimmy B Nguyen. All rights reserved.
//

import UIKit

class GoodViewController: UIViewController {
    
    @IBOutlet var goodJokeView: UIView!
    @IBOutlet weak var goodJokeLabel: UILabel!
    
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
            self.goodJokeLabel.text = "Inheritance."
            sender.setTitle("Back", for: UIControlState.normal)
        } else {
            flip = .transitionFlipFromLeft
            self.flag = false
            self.goodJokeLabel.text = "What's the object-oriented way of getting rich?"
            sender.setTitle("Answer", for: UIControlState.normal)
        }
        UIView.transition(with: self.goodJokeView, duration: 0.5, options: flip, animations: nil, completion: nil)
    }
}
