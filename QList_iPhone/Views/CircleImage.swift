//
//  CircleImage.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/24.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        
        Image("turtlerock")
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
            .frame(maxWidth: 320, maxHeight: 320)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
