//
//  SettingsView.swift
//  Hangry
//
//  Created by Sai Shriya Surla on 01/06/2024.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v1.0.0")
                .navigationTitle("Settings ")
            
        }
        .navigationViewStyle(.stack)

        
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

