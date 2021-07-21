//
//  ViewController.swift
//  8alance Project
//
//  Created by  Scholar on 7/21/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var shakeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func becomeFirstResponder() -> Bool {
        return true
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        if motion == .motionShake {
            shakeLabel.text = "Shake me"
    }
}

}
