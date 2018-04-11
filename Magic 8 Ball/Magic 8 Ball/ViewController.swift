//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Sudheendra Ayalasomayajula on 4/11/18.
//  Copyright © 2018 Sudheendra Ayalasomayajula. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var imageNumber: Int = 0
    
    fileprivate func getRandomNumber() -> Void {
        imageNumber = Int(arc4random_uniform(5))
    }
    
    fileprivate func setImage() {
        ballImage.image = UIImage(named: ballArray[imageNumber])
    }
    
    @IBAction func answerButton(_ sender: Any) {
        getRandomNumber()
        
        setImage()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        getRandomNumber()
        setImage()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        getRandomNumber()
        setImage()
    }

}

