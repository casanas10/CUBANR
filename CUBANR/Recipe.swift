//
//  Recipe.swift
//  CUBANR
//
//  Created by alejandro casanas on 2/14/17.
//  Copyright © 2017 alejandro casanas. All rights reserved.
//

import Foundation
import UIKit

class Recipe {

    fileprivate var _nameRecipe: String!
    fileprivate var _descriptionRecipe: String!
    fileprivate var _imageRecipe: String!
    fileprivate var _totalPrepTime: Int!
    fileprivate var _serving: Int!
    fileprivate var _ingridients: [String]!
    fileprivate var _directions: [String]!
    
    
    var name: String{
        return _nameRecipe
    }
    
    var description: String {
        return _descriptionRecipe
    }
    
    var imageU: String{
        return _imageRecipe
    }
    
    var totalPrepTime: Int {
        return _totalPrepTime
    }
    
    var serving: Int {
        return _serving
    }
    
    var ingridients: [String]{
        return _ingridients
    }
    
    var directions: [String]{
        return _directions
    }
    
    init(name: String, description: String, imageU: String) {
        self._nameRecipe = name
        self._descriptionRecipe = description
        self._imageRecipe = imageU
    }
    
    init (recipeData: Dictionary<String, String>){
        
        self._nameRecipe = recipeData["name"]
        self._descriptionRecipe = recipeData["description"]
        self._imageRecipe = recipeData["imageU"]
        
    }
    
//    init(name: String, description: String, imageU: UIImage, totalPrepTime: Int, serving: Int, ingridients: [String], directions: [String] ) {
//        
//        self._nameRecipe = name
//        self._descriptionRecipe = description
//        self._imageRecipe = imageU
//        self._totalPrepTime = totalPrepTime
//        self._serving = serving
//        self._ingridients = ingridients
//        self._directions = directions
//        
//    }
//    
    
//    
//    init (postID:String, postData: Dictionary<String, AnyObject>){
//        
//        self._postID = postID
//        
//        if let username = postData["username"] as? String {
//            
//            self._username = username
//        }
//        
//        if let name = postData["name"]! as? String {
//            
//            self._name = name
//        }
//        
//        if let description = postData["description"] as? String {
//            
//            self._description = description
//        }
//        
//        if let imageURL = postData["imageURL"]! as? String{
//            self._imageURL = imageURL
//        }
//        
//        if let hearts = postData["hearts"]! as? Int {
//            self._hearts = hearts
//        }
//        
//        if let comments = postData["comments"] as? Int {
//            self._comments = comments
//        }
//        
//        if let instructions = postData["instructions"] as? [String] {
//            self._instructions = instructions
//        }
//        
//        if let ingridients = postData["ingridients"] as? [String] {
//            self._ingridients = ingridients
//        }
//        
//        if let materials = postData["materials"] as? [String] {
//            self._materials = materials
//        }
//    }

}
