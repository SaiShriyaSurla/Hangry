//
//  FavoritesView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 01/06/2024.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            Text("You haven't saved anything to favorites yet")
                .navigationTitle("Favorites")
            
        }
        .navigationViewStyle(.stack)

        
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
