//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Nabeel Khan on 10/14/16.
//  Copyright © 2016 Nabeel Khan. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    var emoji = Emoji()
    

    @IBOutlet weak var categoryLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var definitionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // After Load
        
        emojiLabel.text = emoji.stringEmoji
        definitionLabel.text = emoji.definition
        categoryLabel.text = "Category: \(emoji.category)"
        birthYearLabel.text = "Birthyear: \(emoji.birthYear)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
