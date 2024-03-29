//
//  ProfileEditor.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    // Mengatur Maksimal dan Minimal Tanggal
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        return min...max
    }
    
    var body: some View {
        List {
            // Text Field
            HStack {
                Text("Username").bold()
                Divider()
                TextField("Username", text: $profile.username)
            }
            
            // Toggle Button On Off
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            // Picker Memilih Seasonal Photo Berdasarkan Yang Sudah Ada
            VStack(alignment: .leading, spacing: 20) {
                Text("Seasonal Photo").bold()
                
                Picker("Seasonal Photo", selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            // Tombol Milih Tanggal
            DatePicker(selection: $profile.goalDate, in: dateRange, displayedComponents: .date) {
                Text("Goal Date").bold()
            }
        }
    }
}

struct ProfileEditor_Previews: PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
