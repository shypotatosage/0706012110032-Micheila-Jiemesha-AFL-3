//
//  LandmarkList.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false

    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }

    var body: some View {
        // Untuk Navigasi Agar Bisa Ke Detail Landmark
        NavigationView {
            List {
                // Toggle Button Untuk Menunjukkan Yang Disukai User Saja
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }

                // Menunjukkan Data Landmark Satu Per Satu (Dinamis), Difilter Berdasarkan Apakah User Mau Lihat Yang Dia Sukai Saja Atau Tidak
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
