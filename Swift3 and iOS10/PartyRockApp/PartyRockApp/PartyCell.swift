//
//  PartyCell.swift
//  PartyRockApp
//
//  Created by Ilie, Stefan on 1/9/17.
//  Copyright © 2017 Ilie, Stefan. All rights reserved.
//

import UIKit

class PartyCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitle: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    func updateUI(cellData: DataModel){
        videoTitle.text = cellData.videoTitle;
        
        let url = URL(string: cellData.imageURL)!
        
        DispatchQueue.global().async {
            do{
                let downloadedData = try Data(contentsOf: url)
                DispatchQueue.global().sync {
                    self.videoPreviewImage.image = UIImage(data: downloadedData);
                }
            } catch {
                // handle the error
            }
        }
    }
}
