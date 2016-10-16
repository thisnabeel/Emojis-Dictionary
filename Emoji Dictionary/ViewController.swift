//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Nabeel Khan on 10/14/16.
//  Copyright © 2016 Nabeel Khan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var myTable: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myTable.dataSource = self
        myTable.delegate = self
        
        emojis = makeEmojiArray()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //Deselect The Row
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😳"
        emoji1.birthYear = 2010
        emoji1.category = "Smiley"
        emoji1.definition = "Embarassed Face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😊"
        emoji2.birthYear = 2010
        emoji2.category = "Smiley"
        emoji2.definition = "Genuinely Happy"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🐤"
        emoji3.birthYear = 2010
        emoji3.category = "Animal"
        emoji3.definition = "Little Duckie"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🙈"
        emoji4.birthYear = 2010
        emoji4.category = "Animal"
        emoji4.definition = "Monkey Face with Covered Eyes"
        
        return [emoji1, emoji2, emoji3, emoji4]
    }


}

