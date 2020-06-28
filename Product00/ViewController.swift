//
//  ViewController.swift
//  Product00
//
//  Created by Rexford Machu on 3/21/20.
//  Copyright © 2020 MachuDigital. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func showMessage(sender:UIButton){
        var meaning : String?
        let emojis = ["😂":"Laughing emoji","😍":"Heart-shaped eyes","🤨":"Suspicious","🤩":"Starry eyes"]
        let selectedButton = sender
        if  let emojiWord = selectedButton.titleLabel?.text{
//            if emojiWord == "😂" {
//            meaning = "Laughing emoji"
            meaning = emojis[emojiWord]
        
        let alertController = UIAlertController(title: "Meaning", message : meaning,preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }


}
    
    @IBAction func  textMessage(sender: UIButton){
        let alertController = UIAlertController(title: "Alert", message : "Hello World",preferredStyle:UIAlertController.Style.alert)
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
    }
}
