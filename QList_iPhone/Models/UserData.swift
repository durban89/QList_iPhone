//
//  UserData.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/8/31.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoriteOnly = false
    @Published var landmarks = landmarkData
}
