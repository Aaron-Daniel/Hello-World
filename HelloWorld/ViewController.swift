//
//  ViewController.swift
//  HelloWorld
//
//  Created by Aaron Daniel on 11/8/17.
//  Copyright © 2017 Aaron Daniel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func showMessage(sender: UIButton){
        
        var emojiDict: [String:String] = [
            "🏀":"Basketball",
            "🏈":"Football",
            "⚽️":"Soccer",
            "🎱":"Pool"
        ]
        
        let selectedButton = sender
        
        if let emojiLookup = selectedButton.titleLabel?.text{
            let alertController = UIAlertController(title: "Emoji Translater", message: emojiDict[emojiLookup], preferredStyle: UIAlertControllerStyle.alert)
            alertController.addAction(UIAlertAction(title: "OK", style:UIAlertActionStyle.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
    }
}

