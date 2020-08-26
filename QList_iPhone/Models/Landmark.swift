//
//  Landmark.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/26.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var state: String
    var park: String
    var category: Category
    
    fileprivate var imageName: String
    fileprivate var coordinate: Coordinate
    
    enum Category: String, CaseIterable, Hashable, Codable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
    }
}


struct Coordinate: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

extension Landmark {
    var image: Image {
        ImageStore.shared.image(name: imageName)
    }
}
