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
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: hikeData[0])
    }
}
