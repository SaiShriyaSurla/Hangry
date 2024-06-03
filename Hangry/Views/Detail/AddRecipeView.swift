//
//  AddRecipeView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 03/06/2024.
//

import SwiftUI

struct AddRecipeView: View {
    @State private var name: String = ""
    @State private var selectedCategory: Category = .mains
    @State private var description: String = ""
    @State private var ingredients: String = ""
    @State private var directions: String = ""

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
                        
                    } label: {
                        Label("Cancel", systemImage: "xmark")
                    }
                }
                
                ToolbarItem() {
                    Button{
                        
                    } label: {
                        Label("Done", systemImage: "checkmark")
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
