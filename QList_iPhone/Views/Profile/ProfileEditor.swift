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
            
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
