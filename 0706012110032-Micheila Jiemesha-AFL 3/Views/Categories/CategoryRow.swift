//
//  CategoryRow.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

// Tampilan Row Setiap Category
struct CategoryRow: View {
    var categoryName: String
    var items: [Landmark]

    var body: some View {
        // Mengatur Konten Vertical Seperti Column Di Jetpack Compose
        VStack(alignment: .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)

            // Biar Bisa Scroll, Mirip Di Android Studio
            ScrollView(.horizontal, showsIndicators: false) {
                // Mengatur Konten Horizontal Seperti Row Di Jetpack Compose
                HStack(alignment: .top, spacing: 0) {
                    // Looping Sesuai Jumlah Landmark (Dinamis) dan Bisa Di Klik Menuju Landmark Detail
                    ForEach(items) { landmark in
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            CategoryItem(landmark: landmark)
                        }
                    }
                }
            }
            .frame(height: 185)
        }
    }
}

// Preview
struct CategoryRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks

    static var previews: some View {
        CategoryRow(
            categoryName: landmarks[0].category.rawValue,
            items: Array(landmarks.prefix(4))
        )
    }
}
