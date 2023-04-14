//
//  ContentView.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

// Ini Adalah View Utama Dari Aplikasi
struct ContentView: View {
    // Ini Untuk Menunjukkan Page Mana Yang Dipilih User
    @State private var selection: Tab = .featured
    
    // Ini Untuk Bottom Navigation, Jadi User Bisa Navigate To Feature Page or List Page
    enum Tab {
        case featured
        case list
    }
    
    var body: some View {
        TabView(selection: $selection) {
            // Ini Item Pertama Navigation Kedua, Labelnya Diatur Sendiri Tapi Gambarnya Bisa Ambil Dari Sistem
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)

            // Ini Item Bottom Navigation Kedua, Labelnya Diatur Sendiri Tapi Gambarnya Bisa Ambil Dari Sistem
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

// Previewnya
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        // Environment Object Ini Agar Data Dapat Dipakai Di Berbagai View Dalam App
        ContentView()
            .environmentObject(ModelData())
    }
}
