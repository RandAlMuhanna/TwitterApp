//
//  UserCell.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import SwiftUI

struct UserCell: View {
    var body: some View {
        HStack(spacing : 12){
            Circle()
                .frame(width: 50)
            
            VStack(alignment: .leading){
                Text("Lojin")
                    .font(.subheadline).bold()
                    .foregroundColor(.black)
                
                Text("High School student")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding()
    }
}

struct UserCell_Previews: PreviewProvider {
    static var previews: some View {
        UserCell()
    }
}
