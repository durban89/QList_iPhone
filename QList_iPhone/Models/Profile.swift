//
//  Profile.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/19.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifitions: Bool
    var seasonalPhoto: Season
    var goalDate: Date
    
    static let `default` = Self(username: "durban_1", prefersNotifitions: true, seasonalPhoto: .winter)
    
    init(username: String, prefersNotifitions: Bool = true, seasonalPhoto: Season = .winter) {
        self.username = username
        self.prefersNotifitions = prefersNotifitions
        self.seasonalPhoto = seasonalPhoto
        self.goalDate = Date()
    }
    
    enum Season: String, CaseIterable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
    }
}
