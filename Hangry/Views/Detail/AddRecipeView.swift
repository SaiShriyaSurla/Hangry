//
//  AddRecipeView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 03/06/2024.
//

import SwiftUI

struct AddRecipeView: View {
    @EnvironmentObject var recipesVM: RecipesViewModel
    
    @State private var name: String = ""
    @State private var selectedCategory: Category = .mains
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""
    @State private var navigateToRecipe = false

    
    @Environment(\.dismiss) var dismiss   //to exit the page with the cancel button
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Name")) {
                    TextField("Recipe Name", text: $name)
                }

                Section(header: Text("Category")) {
                    Picker("Category", selection: $selectedCategory) {
                        ForEach(Category.allCases) { category in
                            Text(category.rawValue).tag(category)
                        }
                    }
                }

                Section(header: Text("Description")) {
                    TextEditor(text: $description)
                        .frame(height: 100)
                }

                Section(header: Text("Ingredients")) {
                    TextEditor(text: $ingredients)
                        .frame(height: 100)
                }

                Section(header: Text("Directions")) {
                    TextEditor(text: $directions)
                        .frame(height: 100)
                }
            }
            .toolbar(content: {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button{
                        dismiss()
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                
                ToolbarItem() {
                    NavigationLink(isActive: $navigateToRecipe) {
                        RecipeView(recipe: recipesVM.recipes.sorted{ $0.datePublished > $1.datePublished } [0])
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        Button{
                            saveRecipe()
                            navigateToRecipe = true
                        } label: {
                            
                            Label("Done", systemImage: "checkmark")
                        }
                        
                    }
                    .disabled(name.isEmpty) //wont be able to save until name is not filled in
                   
                }
            })
            .navigationTitle("New Recipe")
            .navigationBarTitleDisplayMode(.inline)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct AddRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        AddRecipeView()
    }
}


extension AddRecipeView{
    private func saveRecipe() {
        
        let recipe = Recipe(name: <#T##String#>, image: <#T##String#>, description: <#T##String#>, ingredients: <#T##String#>, directons: <#T##String#>, category: <#T##Category.RawValue#>, datePublished: <#T##String#>, url: <#T##String#>)
        recipesVM.addRecipe(recipe: recipe)
    }
}
