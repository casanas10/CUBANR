//
//  MealCell.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/13/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class MealCell: UITableViewCell {

    @IBOutlet weak var recipe_image: UIImageView!
    @IBOutlet weak var recipe_name: UILabel!
    @IBOutlet weak var recipe_description: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func configureCell (_ recipe: Recipe) {
        
        self.recipe_name.text = recipe.name
        self.recipe_description.text = recipe.description
        self.recipe_image.image = getImage(imageName: recipe.imageU)
    }
    
    func getImage(imageName:String) -> UIImage {
        
        return UIImage(named: "\(imageName)")!
    }
}
