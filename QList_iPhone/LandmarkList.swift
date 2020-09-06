//
//  LandmarkList.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/27.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $userData.showFavoriteOnly) {
                    Text("Favorite")
                }
                
                ForEach(userData.landmarks) {landmark in
                    if !self.userData.showFavoriteOnly || landmark.isFavorite {
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList().previewDevice(PreviewDevice(rawValue: deviceName))
            .previewDisplayName(deviceName)
        }
        .environmentObject(UserData())
    }
}
