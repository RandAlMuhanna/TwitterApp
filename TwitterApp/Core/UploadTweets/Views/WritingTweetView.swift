//
//  WritingTweetView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 03/06/1444 AH.
//

import SwiftUI

struct WritingTweetView: View {
    @State private var tweets = ""
    
    //Makeing the cancel button active
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        VStack{
            HStack{
                 // Makeing the cancel button active
                Button {
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                }
                Spacer()
                
                Button {
                    print("Tweet")
                } label: {
                    Text("Tweet")
                        .bold()
                        .padding(.vertical , 10)
                        .padding(.horizontal)
                        .background(Color(.systemBlue))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }


            } .padding()
            
            HStack(alignment: .top , spacing:16){
                Circle()
                    .frame(width: 50 , height: 50)
                  
                TextField("What's happening?", text: $tweets)

            
            }
            .padding()
        }
    }
}

struct WritingTweetView_Previews: PreviewProvider {
    static var previews: some View {
        WritingTweetView()
    }
}
