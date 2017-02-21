//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Ilie, Stefan on 1/9/17.
//  Copyright © 2017 Ilie, Stefan. All rights reserved.
//

import Foundation

class DataModel {
    private var _imageURL: String!
    private var _videoURL: String!
    private var _videoTitle: String!
    
    var imageURL: String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitle
    }
    
    init(imagURL: String, videoURL: String, videoTitle: String) {
        _imageURL = imagURL
        _videoURL = videoURL
        _videoTitle = videoTitle
    }
}
