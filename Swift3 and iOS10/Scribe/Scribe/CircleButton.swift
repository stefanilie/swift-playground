//
//  CircleButton.swift
//  Scribe
//
//  Created by Ilie, Stefan on 12/16/16.
//  Copyright © 2016 Ilie, Stefan. All rights reserved.
//

import UIKit
@IBDesignable
class CircleButton: UIButton {
    
    @IBInspectable var cornerRadius: CGFloat = 30.0 {
        didSet {
            setupView();
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupView()
    }
    
    func setupView(){
        layer.cornerRadius = cornerRadius;
    }
}
