//
//  ViewController.swift
//  8alance Project
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    var pick = 1
    
    @IBOutlet weak var blankLabel: UILabel!
    
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func becomeFirstResponder() -> Bool {
        return true
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake
        {
            if pick == 1
            {
                blankLabel.text = "I think"
        }
        else
            if pick == 2
            {
                blankLabel.text = "It is decidely so"
    }
        else
            if pick == 3
    {
        blankLabel.text = "why not"
            }
            pick = pick + 1
        }
    }
    func myRand(a: Int, b: Int) -> Int{
        let range = b-a
        let rand = Int(arc4random_uniform(UInt32(range)))+a
        return rand
    }
}
