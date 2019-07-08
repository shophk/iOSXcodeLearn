//
//  ViewController.swift
//  Magic8Ball
//
//  Created by WongMike on 8/7/2019.
//  Copyright © 2019 WongMike. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]
    var randomBallIndex = 0;
    var previousBallIndex = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateBall()
    }

    
    @IBOutlet weak var ball: UIImageView!
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateBall()
    }
    
    @IBAction func askBtn(_ sender: Any) {
        updateBall()
    }
    
    func updateBall(){
        randomBallIndex = Int.random(in: 0...4)
        while(randomBallIndex == previousBallIndex)
        {
            randomBallIndex = Int.random(in: 0...4)
            print("updateBall ",randomBallIndex)
        }
        
        
        ball.image = UIImage(named:ballArray[randomBallIndex])
        previousBallIndex = randomBallIndex
    }
}

