//
//  TweetsFilterBarModel.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import Foundation


// CaseIterable is protocol like an array , used allCases to generate the items
enum TweetsFilterBarModel : Int , CaseIterable {

    case tweets
    case replise
    case likes
    
    var title: String{
        switch self {
        case .tweets: return "Tweets"
        case .replise: return "Replise"
        case .likes: return "Likes"

        }
    }
    
    
}
