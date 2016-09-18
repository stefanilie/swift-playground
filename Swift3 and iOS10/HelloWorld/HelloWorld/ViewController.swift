//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ilie, Stefan on 9/1/16.
//  Copyright © 2016 Ilie, Stefan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var logo: UIImageView!
    
    @IBOutlet weak var back: UIImageView!
    
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPress(_ sender: AnyObject) {
        button.isHidden = true;
        logo.isHidden = false;
        back.isHidden = false;
    }
}

