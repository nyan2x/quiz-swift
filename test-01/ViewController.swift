//
//  ViewController.swift
//  test-01
//
//  Created by Marianne Grace Borces on 2/24/17.
//  Copyright © 2017 Marianne Grace Borces. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var questionLable : UILabel!
    @IBOutlet var answerLable   : UILabel!
    
    let questions: [String] = [
        "What is 7+7?",
        "What is the capital of Vermont?",
        "What is cognac made from?"
    ]
    
    let answers: [String] = [
        "14",
        "Montpelier",
        "Grapes"
    ]
    
    var currentIndex = 0
    
    @IBAction func showNextQuestion(_ sender: UIButton ) {
        currentIndex += 1

        if currentIndex == questions.count {
            currentIndex = 0;
        }
        
        let question: String = questions[ currentIndex ]

        questionLable.text = question
        answerLable.text   = "???"
    }
    
    @IBAction func showAnswer(_ sender: UIButton ) {
        let answer: String = answers[ currentIndex ]
        answerLable.text   = answer
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view, typically from a nib.
        questionLable.text = questions[ currentIndex ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

