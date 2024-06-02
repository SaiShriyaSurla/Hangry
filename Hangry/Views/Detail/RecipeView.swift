//
//  RecipeView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 02/06/2024.
//

import SwiftUI

struct RecipeView: View {
    var recipe: Recipe // Passing it as prop
    
    var body: some View {
        ScrollView {
            AsyncImage(url: URL(string: recipe.image)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            } placeholder: {
                Image(systemName: "photo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(.white.opacity(0.7))
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            }
            .frame(height: 300)
            .background(LinearGradient(gradient: Gradient(colors: [Color(.gray).opacity(0.3), Color(.gray)]), startPoint: .top, endPoint: .bottom))
            
            VStack(spacing: 30) {
                Text(recipe.name)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.center)
                    .padding(.horizontal)
                
                VStack(alignment: .leading, spacing: 30) {
                    Text(recipe.description)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Ingredients")
                            .font(.headline)
                            .bold()
                            .padding(.horizontal)
                        
                        Text(recipe.ingredients)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                    }
                    
                    VStack(alignment: .leading, spacing: 20) {
                        Text("Directions")
                            .font(.headline)
                            .bold()
                            .padding(.horizontal)
                        
                        Text(recipe.directons)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.horizontal)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal) // Ensure padding for the entire VStack containing text
            }
            .padding(.horizontal) // Padding for the main VStack
        }
        .ignoresSafeArea(.container, edges: .top)
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: Recipe.all[0])
    }
}
