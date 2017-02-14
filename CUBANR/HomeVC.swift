//
//  ViewController.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/13/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {

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
        self.navigationItem.title = "Cuban Recipes"
        navigationController?.navigationBar.titleTextAttributes = [NSForegroundColorAttributeName: UIColor.white]
        navigationController?.navigationBar.barTintColor = UIColor(red: 244.0/255.0, green: 67.0/255.0, blue: 54.0/255.0, alpha: 1.0)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ cellForRowAttableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    
        let cell = UITableViewCell(style: UITableViewCellStyle.value1, reuseIdentifier: "home_cell")
        
        cell.textLabel?.text = "Hi"
        
        return cell
        
    }

}

