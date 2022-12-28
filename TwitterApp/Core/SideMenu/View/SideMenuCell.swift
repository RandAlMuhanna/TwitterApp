//
//  SideMenuCell.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import SwiftUI

struct SideMenuCell: View {
    var viewModel : SideMenuViewModel
    
    var body: some View {
        HStack{
            
            Image(systemName: viewModel.iconsList)
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text(viewModel.descripition)
                .font(.subheadline)
                .foregroundColor(.black)
            Spacer()
        }
        .frame(height: 40 )
        .padding(.horizontal)
    }
}

struct SideMenuCell_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuCell(viewModel: .profile)
    }
}
