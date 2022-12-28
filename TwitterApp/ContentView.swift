//
//  ContentView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showSideMenu = false
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
            MainTapView()
                .navigationBarHidden(showSideMenu)
            
            if showSideMenu {
                
                ZStack {
                    Color(.black)
                        .opacity(showSideMenu ? 0.25 : 0.0)
                } .onTapGesture{
                    withAnimation(.easeInOut){
                        showSideMenu = false
                    }
                }
                .ignoresSafeArea()
            }
               
            SideMenuView()
                .frame(width: 300)
                .offset(x: showSideMenu ? 0 : -300 , y: 0)
                .background(showSideMenu ? Color.white : Color.clear)
        }
        
        .navigationTitle("Home")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar{
            
            ToolbarItem(placement: .navigationBarLeading){
                Button {
                    withAnimation(.easeInOut){
                        showSideMenu.toggle()
                    }
                } label: {
                    Circle()
                        .frame(width: 40)
                }

            }
        }
        
        .onAppear{
            showSideMenu = false
        }
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
