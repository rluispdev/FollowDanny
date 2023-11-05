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
 var userFollowers = String()
    
    var user = User(picture: "danny",
                    name: "Danny Phantom",
                    nick: "@dannyphantom",
                    followers: 22_643)
    
    func customizeNumber(value: Double) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.locale =  Locale(identifier: "pt_BR")
        let shorten = formatter.string(for: value) ?? "0"
        return "\(shorten) K"
    }
    
    
    
    
   
    mutating func followToogle(){
        self.isFollowing.toggle()
    }
  
    
    
}
