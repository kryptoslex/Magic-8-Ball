//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Michael Jay Abalos on 29/09/2017.
//  Copyright © 2017 Michael Jay Abalos. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var magicBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateAnswer()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func generateAnswer() {
        print("randomize")
        
        let index = arc4random_uniform(4) + 1 // since 0-4 random return so +1 to make it 5
        magicBall.image = UIImage(named:"ball\(index)")
    }
    
    @IBAction func askButton(_ sender: Any) {
        generateAnswer()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        generateAnswer()
    }
}

