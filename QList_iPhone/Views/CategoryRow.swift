//
//  CategoryRow.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/13.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        Text(self.categoryName)
            .font(.headline)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow(
            categoryName: landmarkData[0].category.rawValue,
            items: Array(landmarkData.prefix(3))
        )
    }
}
