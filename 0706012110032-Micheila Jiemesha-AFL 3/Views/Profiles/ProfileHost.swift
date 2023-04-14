//
//  ProfileHost.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

struct ProfileHost: View {
    // Environment Ini Akan Mempengaruhi Semua Yang Bergantung Kepadanya Jika Ia Berubah
    @Environment(\.editMode) var editMode
    // Environment Object Untuk Object Yang Dipakai Di Multiple Views
    @EnvironmentObject var modelData: ModelData
    // State Untuk Bisa Modify Value
    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                if editMode?.wrappedValue == .active {
                    Button("Cancel", role: .cancel) {
                        draftProfile = modelData.profile
                        editMode?.animation().wrappedValue = .inactive
                    }
                }
                Spacer()
                EditButton()
            }
            
            // Jika Edit Mode On Maka Menampilkan Profile Editor, Jika Off Maka Menampilkan Profile Summary
            // Jika Masuk Profile Editor, draftProfile = Profile di Model Data agar data terus up to date, dan jika sudah edit maka Model Data Profile akan diupdate sesuai draftProfile
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)
            } else {
                ProfileEditor(profile: $draftProfile)
                    .onAppear {
                        draftProfile = modelData.profile
                    }
                    .onDisappear {
                        modelData.profile = draftProfile
                    }
            }
        }
        .padding()
    }
}

struct ProfileHost_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHost()
            .environmentObject(ModelData())
    }
}
