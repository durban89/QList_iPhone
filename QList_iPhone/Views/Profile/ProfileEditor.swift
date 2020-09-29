//
//  ProfileEditor.swift
//  QList_iPhone
//
//  Created by durban.zhang on 2020/9/27.
//  Copyright © 2020 durban.zhang. All rights reserved.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    
    var body: some View {
        List{
            HStack{
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifitions) {
                Text("Enable Notifications")
            }
            
            VStack {
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases, id: \.self) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
