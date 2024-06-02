//
//  RecipeList.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 02/06/2024.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        VStack {
            HStack {
            Text("\(recipes.count) \(recipes.count > 1 ? "recipes": "recipe" )")
                .font(.headline)
                .fontWeight(.medium)
                .opacity(0.7)
                
                Spacer()
                
            }
            //grows vertically according to the number of items
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 160), spacing:   15)],spacing: 15) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)){
                        
                        RecipeCard(recipe: recipe)
                    }
                    
                    
                    
                }
            }
            .padding(.top)
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView{
            
            RecipeList(recipes: Recipe.all)
            
        }
        
    }
}
