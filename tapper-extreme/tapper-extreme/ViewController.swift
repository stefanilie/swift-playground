//
//  ViewController.swift
//  tapper-extreme
//
//  Created by Ilie, Stefan on 11/23/15.
//  Copyright © 2015 Ilie, Stefan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsText: UITextField!
    @IBOutlet weak var btnPlay: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: AnyObject!) {
        currentTaps++
        updateTapsLabel();
        
        if isGameOver(){
            restartGame()
        }
    }
    
    //Variables
    var maxTaps = 0
    var currentTaps = 0
    
    
    @IBAction func onPlayButtonPressed(sender: UIButton!){
        
        if howManyTapsText.text != nil && howManyTapsText.text != "" {
            logoImg.hidden = true
            btnPlay.hidden = true
            howManyTapsText.hidden = true
            
            tapBtn.hidden = false
            tapsLbl.hidden = false
            
            maxTaps = Int(howManyTapsText.text!)!
            currentTaps = 0
            
            tapsLbl.text = "\(currentTaps) taps"
        }
    }
    
    func restartGame(){
        maxTaps = 0;
        howManyTapsText.text=""
        
        logoImg.hidden = false;
        btnPlay.hidden = false;
        howManyTapsText.hidden = false;
        
        tapBtn.hidden = true;
        tapsLbl.hidden = true;
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true;
        } else {
            return false;
        }
    }
    
    func updateTapsLabel(){
        tapsLbl.text = "\(currentTaps) taps"
    }
}

