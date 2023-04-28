//
//  LandmarkSettings.swift
//  0706012110032-Micheila Jiemesha-AFL 3-Mac
//
//  Created by MacBook Pro on 16/04/23.
//

import SwiftUI

// Menyediakan Settings Aplikasi
struct LandmarkSettings: View {
    // Menyimpan Preference Pilihan User Ke Local Storage Aplikasi
    @AppStorage("MapView.zoom")
    private var zoom: MapView.Zoom = .medium

    // Tampilan Pilihan Map Zoom di Settings Aplikasi, Mau Sebesar Apa
    var body: some View {
        Form {
            Picker("Map Zoom:", selection: $zoom) {
                ForEach(MapView.Zoom.allCases) { level in
                    Text(level.rawValue)
                }
            }
            .pickerStyle(.inline)
        }
        .frame(width: 300)
        .navigationTitle("Landmark Settings")
        .padding(80)
    }
}

struct LandmarkSettings_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkSettings()
    }
}
