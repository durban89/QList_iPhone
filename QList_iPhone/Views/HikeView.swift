//
//  HikeView.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/6.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct HikeView: View {
    var hike: Hike
    @State private var showDetail = false
    
    var body: some View {
        VStack {
            HStack {
                HikeGraph(hike: hike, path: \.elevation)
                    .frame(width: 50, height: 30)
                
                VStack(alignment: .leading) {
                    Text(hike.name)
                    Text(hike.distanceText)
                }
                
                Spacer()
                
                Button(action: {
                    withAnimation(.easeInOut(duration: 4)) {
                        self.showDetail.toggle()
                    }
                }) {
                    Image(systemName: "chevron.right.circle")
                        .imageScale(.large)
                        .rotationEffect(.degrees(showDetail ? 90 : 0))
                        .scaleEffect(showDetail ? 1.5 : 1)
                        .padding()
                        .animation(.spring())
                }
            }
            
            if showDetail {
                HikeDetail(hike: hike)
            }
            
            Spacer()
        }
    }
}

struct HikeView_Previews: PreviewProvider {
    static var previews: some View {
        HikeView(hike: hikeData[0])
    }
}
