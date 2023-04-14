//
//  Landmark.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import Foundation
import SwiftUI
import CoreLocation

// Ini Model Untuk Object Landmark Sesuai JSON Yang Ada
struct Landmark: Hashable, Codable, Identifiable {
    // Simpan Data Landmark
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    // Apakah Landmark Disukai User
    var isFavorite: Bool
    // Apakah Landmark Termasuk Yang Featured
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
    
    // Buat Simpan Image Name
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    // Featured Image Memiliki Format Nama Sendiri
    var featureImage: Image? {
        isFeatured ? Image(imageName + "_feature") : nil
    }

    // Ini Koordinatnya Disimpan Dari Data Yang Ada Di JSON dan Diatur Biar Bisa Dipake Di MapKit
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }

    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
