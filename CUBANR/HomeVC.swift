//
//  ViewController.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/13/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!

    
    let mealArr = ["Breakfast", "Lunch", "Dinner", "Desserts", "Drinks", "Sandwiches"]
    
    let mealImages: [UIImage] = [
        UIImage(named: "egg.png")!,
        UIImage(named: "salad.png")!,
        UIImage(named: "ribs.png")!,
        UIImage(named: "pancakes.png")!,
        UIImage(named: "coffee.png")!,
        UIImage(named: "sandwich.png")!
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigation()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func setupNavigation(){
        //Setup of the Navigation Colors
        navigationItem.title = "CUBANR"
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor(red: 244.0/255.0, green: 67.0/255.0, blue: 54.0/255.0, alpha: 1.0)
        
        navigationController?.navigationBar.tintColor = UIColor.white;
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mealArr.count
    }
    
    func tableView(_ cellForRowAttableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "home_cell") as? HomeCell
        
        cell?.mealTime.text = mealArr[indexPath.row]
        cell?.recipeImage.image = mealImages[indexPath.row]
        
        return cell!
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        
            
        if let indexPath = self.tableView?.indexPath(for: sender as! UITableViewCell) {
            if segue.identifier == "show_meal" {
                let MealVC: MealVC = segue.destination as! MealVC
                let title = mealArr[indexPath.row]
                
                //MealVC.mealArr = RecipesDictionary(meal: title)
                
                MealVC.nav_title = title
            }
            
        } else {
            // Error sender is not a cell or cell is not in collectionView.
        }
    }

    
    

}

