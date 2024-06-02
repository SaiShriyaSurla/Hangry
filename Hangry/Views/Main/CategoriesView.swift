//
//  CategoriesView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 01/06/2024.
//

import SwiftUI

struct CategoriesView: View {
    var body: some View {
        NavigationView {
            Text("Categories")
                .navigationTitle("Categories")
            
        }
        .navigationViewStyle(.stack)

        
    }
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
    }
}
