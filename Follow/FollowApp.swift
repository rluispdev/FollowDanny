//
//  FollowApp.swift
//  Follow
//
//  Created by Rafael Gonzaga on 04/11/23.
//

import SwiftUI

@main
struct FollowApp: App {
    var body: some Scene {
        WindowGroup {
            ProfileView()
                .environmentObject(ProfileViewModel())
        }
    }
}
