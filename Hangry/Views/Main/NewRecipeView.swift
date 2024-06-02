//
//  NewRecipeView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 01/06/2024.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("New Recipe")
                .navigationTitle("New Recipe")
            
        }
        .navigationViewStyle(.stack)

    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
