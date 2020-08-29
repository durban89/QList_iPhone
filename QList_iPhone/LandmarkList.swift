//
//  LandmarkList.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/27.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationView {
            List(landmarkData){ landmark in
                NavigationLink(destination: LandmarkDetail()){
                    LandmarkRow(landmark: landmark)
                }
                
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
