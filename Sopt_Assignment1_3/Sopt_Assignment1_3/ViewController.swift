//
//  ViewController.swift
//  Sopt_Assignment1_3
//
//  Created by 정보영 on 2018. 4. 2..
//  Copyright © 2018년 GooIlJung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var seconds = 15
    var timer = Timer()
    var isTimeRunning = false
    var correctCount: Int = 0
    
    var num1: Int = 0
    var num2: Int = 0
    var chooseOper: Int = 0
    var operat = ["+", "-", "*"]
    
    func setQuestion(){
        
        num1 = Int(arc4random_uniform(99)+1)
        num2 = Int(arc4random_uniform(99)+1)
        chooseOper = Int(arc4random_uniform(3))
        
        quesLabel.text = "\(num1) \(operat[chooseOper]) \(num2)"
        
    }
   
    
    @objc func countDown(){
        
        seconds -= 1
        timeLabel.text = String(seconds)
        if seconds == 0 {
            
            timeLabel.textColor = UIColor.red
            timer.invalidate()
            quesLabel.isHidden = true
            newGame.isHidden = false
            
            
            
            
        }
    }
    @IBOutlet weak var countAnswer: UILabel!
    
    @IBOutlet weak var timeLabel: UILabel!
    
    
    @IBOutlet weak var quesLabel: UILabel!

    @IBOutlet weak var newGame: UIButton!
    
    func timerStart(){
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.countDown), userInfo: nil, repeats: true)
        setQuestion()
    }

    @IBAction func startGame(_ sender: UIButton) {
        if seconds == 0 {
            seconds = 15
            timeLabel.textColor = UIColor.black
            correctCount = 0
            countAnswer.text = "정답 수: \(correctCount)"
            seconds = 15
            timeLabel.text = "\(seconds)"
          
           
           
        }
        sender.isHidden = true
        timerStart()
        quesLabel.isHidden = false
        setQuestion()
    }
    
 
    func getCorrect(){
        seconds = 15
        timeLabel.text = "\(seconds)"
        timer.invalidate()
    }
    
    @IBOutlet weak var answerSheet: UITextField!
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        
        switch operat[chooseOper] {
        case "+":
            if String(num1 + num2) == answerSheet.text {
                
                correctCount += 1
                getCorrect()
                timerStart()

                
            }
            break
        case "-":
            if String(num1 - num2) == answerSheet.text {
                correctCount += 1
                getCorrect()
                timerStart()

              
            }
            break
            
        case "*":
            if String(num1 * num2) == answerSheet.text {
                correctCount += 1
                getCorrect()
                timerStart()

            }
            break
        
    
        default:
            break
        }
        countAnswer.text = "정답 수: \(correctCount)"
        answerSheet.text = nil
        
        
        
    }
    
    
}

