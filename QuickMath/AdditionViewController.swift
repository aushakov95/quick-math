//
//  AdditionViewController.swift
//  QuickMath
//
//  Created by Andrey Ushakov on 10/22/17.
//  Copyright © 2017 Andrei Ushakov. All rights reserved.
//

import UIKit

class AdditionViewController: UIViewController {

    @IBOutlet weak var additionProblemLabel: UILabel!
    @IBOutlet weak var userEntryTextField: UITextField!
    
    var questionsAndAnswers = [
    
        ["5 + 2 = ", "7"],
        ["2 + 2 = ", "4"]
    
    ]
    
    var currentQuestionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }

    @IBAction func submitAnswer(_ sender: Any) {
        
        if checkAnswer() {
            
           getNextQuestion()
            
        }
        
    }
    
    func checkAnswer() -> Bool {
        
        if let userEntry = userEntryTextField.text {
            
            let correctAnswer = questionsAndAnswers[currentQuestionNumber][1]
            
            if userEntry == correctAnswer {
                
                return true
                
            }
            
            return false
            
        }
        
        return false
        
    }
    
    func getNextQuestion() {
        
        currentQuestionNumber += 1
        
        if currentQuestionNumber > 1 {
            
            currentQuestionNumber = 0
            
        }
        
        additionProblemLabel.text = questionsAndAnswers[currentQuestionNumber][0]
        
    }
    
    
    
}
