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
    case appetizers = "Appetizers"
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

extension Recipe{
    static let all: [Recipe] = [
        Recipe(name: "Pav Bhaji",
               image:"https://www.google.com/url?sa=i&url=https%3A%2F%2Fen.wikipedia.org%2Fwiki%2FPav_bhaji&psig=AOvVaw0pFC9g7D7Hg2dz_chW3aeM&ust=1717432706512000&source=images&cd=vfe&opi=89978449&ved=0CBIQjRxqFwoTCIDQncmtvYYDFQAAAAAdAAAAABAE",
               description: "Learn How To Make Pav Bhaji Recipe, a delicious Mumbai street food with The Bombay Chef Varun Inamdar. Are you a foodie and in love with street food, then we are sure one of your favourite street food will be Pav Bhaji and that's the reason, The Bombay chef Varun Inamdar brings to your kitchen yummy, tasty and delicious Pav Bhaji.",
               ingredients: "500 gms roughly cut potatoes\n100 gms green peas\n500 gms chopped tomatoes\nSalt to taste\n\nFor masala\n200 gms butter\n200 gms finely chopped onions\n1/2 tsp jeera\n4 tbsp chilli powder\n1 tbsp garlic paste\n1 medium chopped capsicum\n1/2 tsp haldi\n1 tbsp garam masala\nSalt to taste\nRed edible colour (optional)\nWater as required\n\nFor assembly\nLemons wedges\nChopped onions\nButter\nChopped Coriander",
               directons: " In a pan add potatoes, peas, tomatoes water and and let it simmer for 15-20 minutes\nMash the whole mixture properly and add little bit of water\nIn a pan add butter, onions, cumin seeds, garlic paste and chilli powder and mix it all well\nAdd capsicum, turmeric and garam masala\nAdd the mashed pulp into the pan and mix it nicely and evenly\nAdd food color – red ( Its optional)\nTo adjust the consistency add water and keep it on slow simmer\nApply butter on the pav and toast them on a pan/n/nPav Bhaji is ready to be served!",
               category: "Mains",
               datePublished: "2016-03-25",
               url: "https://www.youtube.com/watch?v=rSLiOqJ2egU")
    
    ]
}
