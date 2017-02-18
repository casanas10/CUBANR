//
//  CircularImage.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/13/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class CircularImage: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        //make circular view
        layer.cornerRadius = layer.frame.size.width/2
        clipsToBounds = true
        
    }
    
}
