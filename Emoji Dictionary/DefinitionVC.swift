//
//  DefinitionVC.swift
//  Emoji Dictionary
//
//  Created by YAUHENI IVANIUK on 11/1/16.
//  Copyright © 2016 be connected club inc. All rights reserved.
//

import UIKit

class DefinitionVC: UIViewController {

    @IBOutlet weak var definitionLbl: UILabel!
    @IBOutlet weak var emojiLbl: UILabel!
    
    var emoji = "NO"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLbl.text = emoji
        
        if emoji == "😀" {
            definitionLbl.text = "Full face smile"
        }
        if emoji == "😋" {
            definitionLbl.text = "Smile"
        }
        if emoji == "🤑" {
            definitionLbl.text = "Money smile"
        }
        if emoji == "😈" {
            definitionLbl.text = "Nasta"
        }
        if emoji == "🐕" {
            definitionLbl.text = "Dog"
        }
        if emoji == "🌧" {
            definitionLbl.text = "Rein"
        }
        if emoji == "🎫" {
            definitionLbl.text = "Ticket"
        }
        if emoji == "💲" {
            definitionLbl.text = "Money Simbol"
        }
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
