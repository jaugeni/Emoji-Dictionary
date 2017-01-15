//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by YAUHENI IVANIUK on 11/1/16.
//  Copyright © 2016 be connected club inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tblViewController: UITableView!
    
    var emojis: [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        tblViewController.dataSource = self
        tblViewController.delegate = self
        emojis = makeEmojiArry()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.emojiPick
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let emoji = emojis[indexPath.row]
        
        performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionVC
        defVC.emoji = sender as! Emoji
    }
    

    
    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.emojiPick = "😀"
        emoji1.definition = "Full face smile"
        emoji1.category = "Smylli"
        emoji1.birhDate = 2010
        
        let emoji2 = Emoji()
        emoji2.emojiPick = "😋"
        emoji2.definition = "Smile"
        emoji2.category = "Smylli"
        emoji2.birhDate = 2010
        
        let emoji3 = Emoji()
        emoji3.emojiPick = "🤑"
        emoji3.definition = "Money smile"
        emoji3.category = "Smylli"
        emoji3.birhDate = 2012
        
        let emoji4 = Emoji()
        emoji4.emojiPick = "😈"
        emoji4.definition = "Nasta"
        emoji4.category = "Smylli"
        emoji4.birhDate = 2011
        
        let emoji5 = Emoji()
        emoji5.emojiPick = "🐕"
        emoji5.definition = "Dog"
        emoji5.category = "Anymal"
        emoji5.birhDate = 2015
        
        let emoji6 = Emoji()
        emoji6.emojiPick = "🌧"
        emoji6.definition = "Rein"
        emoji6.category = "Whether"
        emoji6.birhDate = 2015
        
        let emoji7 = Emoji()
        emoji7.emojiPick = "🎫"
        emoji7.definition = "Ticket"
        emoji7.category = "Entertainment"
        emoji7.birhDate = 2016
        
        let emoji8 = Emoji()
        emoji8.emojiPick = "💲"
        emoji8.definition = "Money Simbol"
        emoji8.category = "Simbol"
        emoji8.birhDate = 2016
        
        return[emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8]
        
    }
    
}

