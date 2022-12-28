//
//  TweetCell.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct TweetCell: View {
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Circle()
                    .frame(width: 56)
                    .foregroundColor(.blue)
                VStack(alignment: .leading , spacing: 12){
                    
                    // User Informaion
                    HStack{
                        Text("Rand AlMuhanna")
                            .font(.subheadline.bold())
                        
                        Text("@Rand")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("4W")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //Tweet Caption
                    Text("I love Coding")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }

            }
            HStack{
                Button {
                    // Action here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                
                Button {
                    // Action here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                
                Spacer()

                Button {
                    // Action here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()

                
                Button {
                    // Action here
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

            }
            .foregroundColor(.gray)
            .padding()
            Divider()
        }
    }
}

struct TweetCell_Previews: PreviewProvider {
    static var previews: some View {
        TweetCell()
    }
}
