//
//  MapView.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI
import MapKit

struct MapView: View {
    // Ini Koordinat Dari Lokasi Yang Mau Ditunjukkan Di Mapnya
    var coordinate: CLLocationCoordinate2D
    
    // Menyimpan Preferensi Zoom Yang Dipilih User, Default Medium
    @AppStorage("MapView.zoom")
    private var zoom: Zoom = .medium

    enum Zoom: String, CaseIterable, Identifiable {
        case near = "Near"
        case medium = "Medium"
        case far = "Far"

        var id: Zoom {
            return self
        }
    }

    // Mengatur Zoom Map Berdasarkan Preferensi User
    var delta: CLLocationDegrees {
        switch zoom {
        case .near: return 0.02
        case .medium: return 0.2
        case .far: return 2
        }
    }

    var body: some View {
        Map(coordinateRegion: .constant(region))
    }

    // Ini Buat Ngatur Region Awal Sampai Mana Yang Ditampilkan
    var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: delta, longitudeDelta: delta)
        )
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        // Ini Contoh Koordinatnya
        MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
    }
}
