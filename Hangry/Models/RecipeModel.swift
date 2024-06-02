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
    
}

struct Recipe: Identifiable {
    let id = UUID() //random string identifier
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directons: String
    let category: Category
    let datePublished: String
    let url: String
}

