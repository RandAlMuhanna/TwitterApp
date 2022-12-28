//
//  SideMenuView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import SwiftUI

struct SideMenuView: View {
    
    var body: some View {
        
        VStack(alignment: .leading , spacing: 30) {
            
            VStack(alignment: .leading , spacing: 12){
                Circle()
                    .frame(width: 50)
                
                VStack(alignment: .leading, spacing: 6){
                    Text("Rand AlMuhanna")
                        .font(.subheadline).bold()
                    Text("@Rand")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                UserStats()
                    .padding(.vertical)
                
            } .padding(.leading)
            ForEach(SideMenuViewModel.allCases, id: \.rawValue){ viewModel in
                
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        SideMenuCell(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        print(" LogOut")
                    } label: {
                        SideMenuCell(viewModel: viewModel)
 
                    }

                } else {
                    SideMenuCell(viewModel: viewModel)
                }
                
            };                             Spacer()

        }
    }
    
    struct SideMenuView_Previews: PreviewProvider {
        static var previews: some View {
            SideMenuView()
        }
    }
}
