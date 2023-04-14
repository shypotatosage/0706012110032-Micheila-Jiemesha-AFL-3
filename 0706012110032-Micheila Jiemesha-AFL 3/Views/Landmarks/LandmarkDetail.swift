//
//  LandmarkDetail.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark

    // Ini Mengambil Index Landmark Biar Favorite Feature Bisa Jalan
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        // Ini Agar Bisa Scroll, Sama Dengan Di Android Studio
            ScrollView {
                // Menampilkan MapView, ignoresSafeArea Untuk Melampaui Safe Area Di Bagian Edges, Dalam Kasus Ini, Top
                MapView(coordinate: landmark.locationCoordinate)
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 300)

                // Mengatur Image Agar Bulat, dan Offset itu Untuk Memindahkan Posisi Image Di Luar Dari Posisinya Yang Seharusnya, Ya Padding Bekerja Seperti Umumnya
                CircleImage(image: landmark.image)
                    .offset(y: -130)
                    .padding(.bottom, -130)

                // Mengatur Konten Vertical Seperti Column Di Jetpack Compose
                VStack(alignment: .leading) {
                    // Mengatur Konten Horizontal Seperti Row Di Jetpack Compose
                    HStack {
                        Text(landmark.name)
                            .font(.title)
                        FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                    }
                    
                    // Mengatur Konten Horizontal Seperti Row Di Jetpack Compose
                    HStack {
                        Text(landmark.park)
                        Spacer()
                        Text(landmark.state)
                    }
                    .font(.subheadline)
                    .foregroundColor(.secondary)

                    Divider()

                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
            }
            .navigationTitle(landmark.name)
            .navigationBarTitleDisplayMode(.inline)
        // Navigation Bar Title Display Mode Inline Itu Buat Nampilin Title Navigationnya Sebagai Text Yang Kecil dan Masuk Ke Dalam Kayak Habis Scroll Di Yang Biasanya
        }
}

// Preview
struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0])
            .environmentObject(ModelData())
    }
}
