//
//  MainTapView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct MainTapView: View {
    @State private var selectedPage = 0
    var body: some View {
        TabView(selection: $selectedPage) {
            FeedView()
                .onTapGesture {
                    self.selectedPage = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            
            
            ExploreView()
                .onTapGesture {
                    self.selectedPage = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            
            
            NotificationsView()
                .onTapGesture {
                    self.selectedPage = 2
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    self.selectedPage = 3
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(3)
            
        }
    }
}

struct MainTapView_Previews: PreviewProvider {
    static var previews: some View {
        MainTapView()
    }
}
