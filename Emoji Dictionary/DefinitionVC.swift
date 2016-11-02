//
//  DefinitionVC.swift
//  Emoji Dictionary
//
//  Created by YAUHENI IVANIUK on 11/1/16.
//  Copyright © 2016 be connected club inc. All rights reserved.
//

import UIKit

class DefinitionVC: UIViewController {
    
    
    @IBOutlet weak var emojiLbl: UILabel!
    @IBOutlet weak var definitionLbl: UILabel!
    @IBOutlet weak var categoryLbl: UILabel!
    @IBOutlet weak var yearLbl: UILabel!
    
    var emoji = Emoji()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        emojiLbl.text = emoji.emojiPick
        definitionLbl.text = emoji.definition
        categoryLbl.text = "Category \(emoji.category)"
        yearLbl.text = "Origination Date: \(emoji.birhDate)"
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
