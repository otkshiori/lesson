//
//  ViewController.swift
//  ShioriLesson
//
//  Created by ほたる on 2018/07/31.
//  Copyright © 2018年 shiori. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField! {
        didSet {
            textField.delegate = self
        }
    }
    @IBOutlet weak var answerLabel: UILabel!
    
    let dictionary: [String : String] = [
        "すずき" : "けんた" ,
        "おおつか" : "しおり"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonAccsion() {
        showAnswer()
    }
    
    func showAnswer() {
        let inputText: String = textField.text!
        
        if let name = dictionary[inputText] {
            answerLabel.text = name
        } else {
            answerLabel.text = "お留守です"
        }
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        showAnswer()
        return true
    }
}

