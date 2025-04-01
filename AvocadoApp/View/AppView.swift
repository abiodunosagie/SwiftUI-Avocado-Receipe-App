//
//  AppView.swift
//  AvocadoApp
//
//  Created by Abiodun Osagie on 01/04/2025.
//

import SwiftUI

struct AppView: View {
    // MARK: - PROPERTIES
  
    // MARK: - BODY
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }
            ContentView()
                .tabItem {
                    Image("tabicon-book")
                        Text("Recipes")
                }
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                        Text("Settings")
                }
        }//: TAB
        .accentColor(.primary)
    }
}


// MARK: - PREVIEW
#Preview {
    AppView()
}
