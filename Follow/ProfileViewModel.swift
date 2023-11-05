//
//  ProfileViewModel.swift
//  Follow
//
//  Created by Rafael Gonzaga on 05/11/23.
//

import Foundation
//ViewModel
struct ProfileViewModel {
    
 var isFollowing = false
    
    var user = User(picture: "danny",
                    name: "Danny Phantom",
                    nick: "@dannyphantom",
                    followers: 22_643)
   
    mutating func followToogle(){
        self.isFollowing.toggle()
    }
  
    
    
}
