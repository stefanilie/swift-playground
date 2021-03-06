//
//  StartViewController.swift
//  howmanyleft
//
//  Created by Ilie, Stefan on 2/21/17.
//  Copyright © 2017 Ilie, Stefan. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {

    override func viewDidLoad() {
        
        self.view.backgroundColor = UIColor.white;
        // Do any additional setup after loading the view.
        let width = UIScreen.main.bounds.width;
        let height = UIScreen.main.bounds.height;
        let testButton = UIButton(frame: CGRect(x: 0, y: height*0.5, width: width-10, height: 20));
        testButton.setTitle("Ciorba", for: .normal)
        testButton.setTitleColor(UIColor.red, for: .normal)
        testButton.setTitleShadowColor(UIColor.blue, for: .selected)
        
        testButton.addTarget(self, action: #selector(changeView(sender:)), for: .touchUpInside);
        
        self.view.addSubview(testButton);
        
    }

    
    func changeView(sender: UIButton){
        let secondController = SearchViewController();
        self.navigationController?.pushViewController(secondController, animated: true);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
