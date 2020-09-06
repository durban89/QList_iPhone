//
//  Hike.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/6.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct Hike: Codable, Hashable, Identifiable {
    var name: String
    var distance: Double
    var id: Int
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String{
        return Hike.formatter.string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        var distanceFromStart: Double
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
