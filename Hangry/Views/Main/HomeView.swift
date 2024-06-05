//
//  HomeView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 01/06/2024.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    var body: some View {
        NavigationView {
            ScrollView{
                
                RecipeList(recipes: recipesVM.recipes)
            }
            .navigationTitle("My Recipes") //top of the screen
            
            }
        
        .navigationViewStyle(.stack) //prevents internal errors
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(RecipesViewModel())
    }
}
