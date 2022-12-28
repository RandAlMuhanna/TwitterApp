//
//  ExploreView.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 01/06/1444 AH.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0...10 , id: \.self){ _ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserCell()
                            }

                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)

        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
