//
//  RecipeVC.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/14/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class RecipeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    var textd = "I’m not sure if it is a bug or not. But the problem was also mentioned by UseYourLoaf. When the table view is first displayed, you may find some of the cells are not sized properly. But when you scroll the table view, the new cells are displayed with correct row height. To workaround this issue, you can force a reload after the view appears"
    
    var nav_title = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
  
        tableView.reloadData()
        
        navigationItem.title = nav_title

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        tableView.estimatedRowHeight = 300
        
        if indexPath.section == 0 {
            
            return 200;
        }
        
        return UITableViewAutomaticDimension;
        
    }
    
    func tableView(_ cellForRowAttableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "image_cell") as? RecipeImageCell
            //print(tableView.rectForRow(at: indexPath))
            cell?.recipe_image.image = UIImage(named: "\(nav_title)")
            
            return cell!
        }
            
        else if indexPath.section == 1 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "description_cell") as? DescriptionCell
            
            cell?.recipeDescription.text = "Grab a tasty sandwich to go. Grab a tasty sandwich here and now."
            
            return cell!
        }
            
        else if indexPath.section == 2 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "instruction_cell") as? IntructionsCell
            
            cell?.recipe_ingridients.text = textd;
            
            return cell!
        }
            
        else if indexPath.section == 3 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "directions_cell") as? DirectionsCell
            
            cell?.recipe_directions.text = textd;
            
            return cell!
        }
        
        
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "image_cell") as? RecipeImageCell
        return cell!
        
    }
    

}
