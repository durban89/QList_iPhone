//
//  FeatureCard.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/10/8.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct FeatureCard: View {
    var landmark: Landmark
    
    var body: some View {
        landmark.featureImage?.resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(TextOverlay(landmark: landmark))
    }
}

struct FeatureCard_Previews: PreviewProvider {
    static var previews: some View {
        FeatureCard(landmark: landmarkData[0])
    }
}
