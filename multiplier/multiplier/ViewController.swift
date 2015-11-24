//
//  ViewController.swift
//  multiplier
//
//  Created by Ilie, Stefan on 11/23/15.
//  Copyright © 2015 Ilie, Stefan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var logoImg: UIImageView!;
    @IBOutlet weak var playBtn: UIButton!;
    @IBOutlet weak var lblMultiplier: UITextField!;
    
    @IBOutlet weak var fishImg: UIButton!;
    @IBOutlet weak var lblResult: UILabel!
    var multiplier = 0;
    var result = 0;
    @IBAction func oushFish(sender: AnyObject) {
        if(result<40){
            result = result + multiplier;
            lblResult.text = "\(result) + \(multiplier)= \(result+multiplier)"
        } else {
            fishImg.hidden = true;
            lblResult.hidden = true;
            
            logoImg.hidden = false;
            playBtn.hidden = false;
            lblMultiplier.hidden = false;
        }
        
    }
    @IBAction func playPush(sender: AnyObject) {
        if lblMultiplier.text != "" && lblMultiplier.text != nil {
            logoImg.hidden = true;
            playBtn.hidden = true;
            lblMultiplier.hidden = true;
            
            fishImg.hidden = false;
            lblResult.hidden = false;
            multiplier = Int(lblMultiplier.text!)!;
            lblResult.text = "0 + \(multiplier) = \(multiplier) ";
           
        }
    }
}

