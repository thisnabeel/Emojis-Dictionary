//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Nabeel Khan on 10/14/16.
//  Copyright © 2016 Nabeel Khan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = "NO EMOJI!"
    

    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // After Load
        
        emojiLabel.text = emoji
        
        if emoji == "🍕" {
            definitionLabel.text = "This is a Pizza!"
        } else {
            definitionLabel.text = "Hello!"

        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
