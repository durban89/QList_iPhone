//
//  ContentView.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/23.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Hello, World!")
                .font(.title)
            
            HStack {
                Text("subtitle")
                    .font(.subheadline)
                Spacer()
                
                Text("Country")
                    .font(.subheadline)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
