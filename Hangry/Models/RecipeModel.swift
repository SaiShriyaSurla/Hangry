//
//  RecipeModel.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 02/06/2024.
//

import Foundation

enum Category: String{
    case breakfast = "Breakfast"
    case salads = "Salads"
    //case appetizers = "Appetizers"
    case snacks = "Snacks "
    case sides = "Sides"
    case mains = "Mains"
    case deserts = "Deserts"
    case drinks = "Drinks"
    
    
}

struct Recipe: Identifiable {
    let id = UUID() //random string identifier
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directons: String
    let category: Category.RawValue //reading the string and not the case itself
    let datePublished: String
    let url: String
}

