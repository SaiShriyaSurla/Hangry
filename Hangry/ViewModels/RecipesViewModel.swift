//
//  RecipesViewModel.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 04/06/2024.
//

//Making editing dynamic
import Foundation

class RecipesViewModel: ObservableObject{
    @Published private(set) var recipes : [Recipe] = []  //@Published announces to users when value has changed
    
    
    init() {
        
        recipes = Recipe.all
    }
}
