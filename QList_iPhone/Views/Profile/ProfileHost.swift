//
//  ProfileHost.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/19.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    var draftProfile = ""
    
    var body: some View {
        Text("Profile for : \(draftProfile)")
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
