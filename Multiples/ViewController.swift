//
//  ViewController.swift
//  Multiples
//
//  Created by Julia Waggoner on 1/19/16.
//  Copyright © 2016 Julia Waggoner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //variables
    var currentTotal = 0
    var multiple = 0
    
    //outlets
    
    @IBOutlet weak var play: UIButton!
    @IBOutlet weak var whatMultiple: UITextField!
    @IBOutlet weak var logo: UIImageView!
    
    
    @IBOutlet weak var add: UIButton!
    @IBOutlet weak var addResult: UITextField!
    
    @IBAction func onAdd(sender: UIButton!){
        updateTotal()
        
        if isGameOver(){
            restartGame()
        }
    }
    
    @IBAction func onPlay(sender: UIButton){
        if whatMultiple.text != nil && whatMultiple.text != ""{
            
            play.hidden = true
            whatMultiple.hidden = true
            logo.hidden = true
            
            add.hidden = false
            addResult.hidden = false
            
            multiple = Int(whatMultiple.text!)!
            currentTotal = 0
            
            updateTotal()
        }
    }
    
    func updateTotal(){
        var newCurrentTotal = 0
        newCurrentTotal = currentTotal + multiple
        addResult.text = "\(currentTotal) + \(multiple) = \(newCurrentTotal)"
        currentTotal = newCurrentTotal
    }
    
    func isGameOver() -> Bool{
        if currentTotal > 50{
            return true
        }
        else{
            return false
        }
    }
    
    func restartGame(){
    
        currentTotal = 0
        whatMultiple.text = ""
    
        play.hidden = false
        whatMultiple.hidden = false
        logo.hidden = false
    
        add.hidden = true
        addResult.hidden = true
    }


}

