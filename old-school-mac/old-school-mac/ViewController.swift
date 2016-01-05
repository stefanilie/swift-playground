//
//  ViewController.swift
//  old-school-mac
//
//  Created by Ilie, Stefan on 11/24/15.
//  Copyright © 2015 Ilie, Stefan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        mainLbl.text="";
//        for var blah=0; blah<phrases.count; blah++ {
//            var text = mainLbl.text!;
//            text+=phrases[blah];
//            mainLbl.text = text;
//        }
        
        var x = 0;
        repeat{
            var text = mainLbl.text!;
            text+=phrases[x];
            mainLbl.text = text;
            x++;
        }while x<phrases.count;
        // Do any additional setup after loading the view, typically from a nib.
        
        for phrase in phrases {
            var text = mainLbl.text!;
            text+=phrase;
            mainLbl.text = text;
            x++;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var mainLbl: UILabel!
    var phrases = ["Booting from floppy...\n",
                    "Reading from disk...\n",
                    "Updating registry...\n",
                    "....................\n",
                    "....................\n",
                    "..\n",
                    "Welcome Ghoerghe!\nIt is nice to see you again!"];
    

}

