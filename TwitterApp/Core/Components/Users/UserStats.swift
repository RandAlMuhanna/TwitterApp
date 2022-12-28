//
//  UserStats.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import SwiftUI

struct UserStats: View {
    var body: some View {
        HStack(spacing: 22){
            HStack(spacing: 4){
                Text("200")
                    .font(.subheadline).bold()
                
                Text("Following")
                    .font(.caption)
                    .foregroundColor(.gray)

            }
            
            HStack(spacing: 4){
                Text("10K")
                    .font(.subheadline).bold()
                
                Text("Followers ")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
        }
    }
}

struct UserStats_Previews: PreviewProvider {
    static var previews: some View {
        UserStats()
    }
}
