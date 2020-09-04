//
//  Badge.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/1.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 0))
            .opacity(0.5)
    }
    
    var body: some View {
        ZStack{
            BadgeBackground()
            
            GeometryReader{ geometry in
                self.badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
            
        }
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
