//
//  HikeDetail.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/9.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    var hike: Hike
    @State var dataToShow = \Hike.Observation.elevation
    
    var buttons = [
        ("Elevation", \Hike.Observation.elevation),
        ("HeartRate", \Hike.Observation.heartRate),
        ("Pace", \Hike.Observation.pace),
    ]
    var body: some View {
        VStack {
            HikeGraph(hike: hike, path: dataToShow)
                .frame(height: 200)
            
            HStack(spacing: 25){
                ForEach(buttons, id: \.0) { button in
                    Button(action: {
                        self.dataToShow = button.1
                    }) {
                        Text(button.0)
                            .foregroundColor(button.1 == self.dataToShow ? Color.gray : Color.accentColor)
                            .font(.system(size: 15))
                            .animation(nil)
                    }
                }
            }
        }
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: hikeData[0])
    }
}
