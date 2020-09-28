//
//  ProfileHost.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/19.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ProfileHost: View {
    @State var draftProfile = Profile.default
    @Environment(\.editMode) var mode
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack{
                Spacer()
                
                EditButton()
            }
            
            if self.mode?.wrappedValue == .inactive {
                ProfileSummary(profile: userData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost().environmentObject(UserData())
    }
}
