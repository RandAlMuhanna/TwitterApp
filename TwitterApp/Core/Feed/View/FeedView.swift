//
//  FeedView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct FeedView: View {
    // init value to show new sheet 
    @State private var writeNewTweet = false
    
    var body: some View {
// Scroll loop over Tweets
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0...5 , id:\.self){ _ in
                        TweetCell()
                            .padding()
                    }
                }
            }
            Button {
                writeNewTweet.toggle()
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .frame(width: 50 , height: 50)
                    .padding()
            }
            .padding()
            .fullScreenCover(isPresented: $writeNewTweet) {
                WritingTweetView()
            }

        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
