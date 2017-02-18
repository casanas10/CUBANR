//
//  MealVC.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/13/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class MealVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    
    var myNewDictArray = [[String:String]]()
    
    var CubanEggSandwich = [
        "name" : "Cuban Egg Sandwich",
        "description": "Hello this is a cuban egg sandwich",
        "imageU" : "Sandwiches"
    ]
    
    var Tortilla = [
        "name" : "Tortilla",
        "description": "Hello this is a tortilla",
        "imageU" : "tortilla"
    ]
    
    var recipes = [Recipe]()
    
    var nav_title = "";
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        navigationItem.title = nav_title
        
        addAllMealRecipes()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func tableView(_ cellForRowAttableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let recipe = recipes[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "meal_cell") as? MealCell
        
        cell?.configureCell(recipe)
        
        return cell!
        
    }
    
    
    func addAllMealRecipes(){
        
        myNewDictArray.append(CubanEggSandwich)
        myNewDictArray.append(Tortilla)
        
        for name in myNewDictArray {
            
            let recipe = Recipe(recipeData: name)
            recipes.append(recipe)
        }
        
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
        
        if (self.tableView?.indexPath(for: sender as! UITableViewCell)) != nil {
            if segue.identifier == "mealToRecipe" {
                let RecipeVC: RecipeVC = segue.destination as! RecipeVC
                let title = "tortilla"
                
                RecipeVC.nav_title = title
            }
            
        } else {
            // Error sender is not a cell or cell is not in collectionView.
        }
    }
    


}
