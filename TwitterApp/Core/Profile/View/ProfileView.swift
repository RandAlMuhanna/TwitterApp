//
//  ProfileView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedBar: TweetsFilterBarModel = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack(alignment: .leading){
            header
            action
            userDetails
         tweetsFilterBar
            tweetView
            
           // Spacer()
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var header : some View{
        
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
                .frame(height: 120)
            
            VStack{
                
                Button {
                    mode.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20 , height: 16)
                        .foregroundColor(.white)
                        .offset(x : 16 , y : 12)
                }

                Circle()
                    .frame(width: 75)
                    .offset( x : 16 , y : 24)
            }
        }
        
    }
    var action : some View {
        
        HStack(spacing: 12){
            Spacer()
           Image(systemName: "bell.badge")
                .padding(6)
                .font(.title3)
                .overlay(Circle().stroke(Color.gray , lineWidth : 0.75))
            
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline).bold()
                    .frame(width: 100 , height: 35)
                    .overlay(RoundedRectangle(cornerRadius : 20) . stroke(Color.gray , lineWidth: 0.75))
            }

        }
        .padding(.trailing)
        
        
    }
    
    var userDetails : some View{
        
        // User Name
        VStack(alignment: .leading){
            HStack{
                Text("Rand AlMuhanna")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(.blue)
            
            }
            
            Text("@Rand")
                .foregroundColor(.gray)
                
            Text(" iOS Developer ")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 22){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Shqraa")
                    
                }
                
                HStack{
                    Image(systemName: "link")
                    Text("www.rand.com")
                    
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStats()
            
            .padding(.vertical)
            
        }
        .padding(.horizontal)
        
    }
    
    var tweetsFilterBar : some View {
        HStack{
            ForEach(TweetsFilterBarModel.allCases , id: \ .rawValue) { item in
                VStack{
                    Text(item.title)
                        .font(.subheadline)
                    // To track and update the selected items is SELECTED its gonna be bold
                        .fontWeight(selectedBar == item ? .semibold : .regular)
                    // To change the Color of SELECTED item
                        .foregroundColor(selectedBar == item ? .black : .gray)
                    
                    // The Blue line under SELECTED item
                    if selectedBar == item {
                        Capsule()
                            .foregroundColor(.blue)
                            .frame(height: 3)
                            .matchedGeometryEffect(id: "geo", in: animation)
                    }else {
                        Capsule()
                            .foregroundColor(.clear)
                            .frame(height: 3)
                    }
                    
                }
                //  Animate to SELECTED item
                .onTapGesture {
                    withAnimation(.easeInOut){
                        self.selectedBar = item
                    }
                }
                
            }
            
        }
        .overlay(Divider().offset(x : 0 , y : 15))
        
    }
    
    var tweetView : some View {
        
        
         ScrollView{
             LazyVStack{
                 ForEach(0...5 , id : \.self ) { _ in
                     TweetCell()
                         .padding()

                 }
             }
         }
    }
}
