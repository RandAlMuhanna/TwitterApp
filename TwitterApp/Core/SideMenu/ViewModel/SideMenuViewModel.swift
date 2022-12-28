//
//  SideMenuViewModel.swift
//  TwitterApp
//
//  Created by Rand AlMuhanna on 02/06/1444 AH.
//

import Foundation

enum SideMenuViewModel : Int , CaseIterable {
    
case profile
case lists
case bookmark
case logout
    
    var descripition: String {
        switch self {
        case .profile: return "Profile"
        case .lists: return "Lists"
        case .bookmark: return "Bookmarks"
        case .logout: return "Logout"
            
        }
    }
        var iconsList: String {
            switch self {
            case .profile: return "person"
            case .lists: return "list.bullet"
            case .bookmark: return "bookmark"
            case .logout: return "arrow.left.square"
                
            }
            
        }
        
    }

