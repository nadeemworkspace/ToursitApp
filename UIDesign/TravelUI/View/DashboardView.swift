//
//  DashboardView.swift
//  UIDesign
//
//  Created by Muhammed Nadeem M A on 06/04/25.
//

import SwiftUI

struct DashboardView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            Text("Messages")
                .tabItem {
                    Image(systemName: "paperplane")
                }
            
            Text("Profile")
                .tabItem {
                    Image(systemName: "person.crop.circle")
                }
        }
        .tint(.pink)
    }
}

#Preview {
    DashboardView()
}
