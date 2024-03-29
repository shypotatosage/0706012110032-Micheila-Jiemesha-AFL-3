//
//  Profile.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 13/04/23.
//

import Foundation

// Ini Model Untuk Profile User
struct Profile {
    var username: String
    var prefersNotifications = true
    var seasonalPhoto = Season.winter
    var goalDate = Date()

    // Set Default Value Of Name
    static let `default` = Profile(username: "g_kumar")

    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"

        var id: String { rawValue }
    }
}
