//
//  ViewController.swift
//  Magic-8-Ball
//
//  Created by ds on 2019/1/31.
//  Copyright © 2019 enjoy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    
    var ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber:Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        newBallImage()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        newBallImage()
    }
    
    func newBallImage() {
        randomBallNumber = Int(arc4random_uniform(5));
        imageView.image = UIImage(named: ballArray[randomBallNumber])
    }
    

    @IBAction func askButtonAction(_ sender: UIButton) {
        newBallImage()
    }
}

