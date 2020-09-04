//
//  RotatedBadgeSymbol.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/4.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol: View {
    var angle: Angle
    
    var body: some View {
        BadgeSymbol()
        .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

struct RotatedBadgeSymbol_Previews: PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
