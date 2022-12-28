//
//  ReusableHeaderView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 04/06/1444 AH.
//

import SwiftUI

struct ReusableHeaderView: View {
    let HeadA: String
    let HeadB: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack{Spacer()}
         
            Text(HeadA)
                .font(.largeTitle)
                .fontWeight(.semibold)
            
            Text(HeadB)
                .font(.footnote)
                .fontWeight(.semibold)
        }
        .frame(height:250)
        .padding(.horizontal)
        .padding(.top ,40)
        .padding(.leading)
        .background(Color(.systemBlue))
        .foregroundColor(.white)
      //  .clipShape(RoundedRectangle(cornerRadius: 25))

    }
}

struct ReusableHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ReusableHeaderView(HeadA : "Welcome" , HeadB : "Login")
    }
}
