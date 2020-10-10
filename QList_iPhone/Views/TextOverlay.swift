//
//  TextOverlay.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/10/8.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct TextOverlay: View {
    var landmark: Landmark
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct TextOverlay_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlay(landmark: landmarkData[0])
    }
}
