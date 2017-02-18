//
//  IntructionsCell.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/14/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class IntructionsCell: UITableViewCell {

    @IBOutlet weak var recipe_ingridients: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
