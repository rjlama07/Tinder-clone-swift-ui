//
//  MainTabBar.swift
//  Tinder Clone
//
//  Created by Ritesh jung lama on 14/12/2025.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            CardView()
                .tabItem{
                    Image(systemName: "flame")
                }
                .tag(0)
            Text("SearchView")
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }
                .tag(1)
            Text("Inbox View")
                .tabItem{
                    Image(systemName: "bubble")
                }
                .tag(2)
            Text("Profile")
                .tabItem{
                    Image(systemName: "person")
                }
                .tag(3)
            
        }
        .tint(.pink)
    }
}

#Preview {
    MainTabView()
}
