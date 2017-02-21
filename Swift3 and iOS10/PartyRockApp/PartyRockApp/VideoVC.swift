//
//  VideoVC.swift
//  PartyRockApp
//
//  Created by Ilie, Stefan on 1/9/17.
//  Copyright © 2017 Ilie, Stefan. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLbl: UILabel!
    
    
    private var _partyItem: DataModel!
    
    var partyItem: DataModel {
        get {
            return _partyItem
        } set {
            _partyItem = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLbl.text = partyItem.videoTitle;
        webView.loadHTMLString(partyItem.videoURL, baseURL: nil)
        // Do any additional setup after loading the view.
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
