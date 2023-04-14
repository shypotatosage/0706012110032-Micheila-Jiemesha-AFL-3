//
//  Badge.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 13/04/23.
//

import SwiftUI

struct Badge: View {
    var badgeSymbols: some View {
        // Opacity Berarti Dia Transparent Berapa Persen, Ini 0.5, Ini Looping Biar Ada 8 Dengan Derajat Kemiringan Yang Sama dan Dapat Membentuk Lingkaran
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360.0
            )
        }
        .opacity(0.5)
    }
    
    var body: some View {
        // ZStack Ini Buat Biar Item Bisa NgeStack On Top Of Another
        ZStack {
            BadgeBackground()
            
            // Scale Effect Buat Ngatur Besar Kecilnya Gambar, Position Buat Ngatur  Posisi Gambarnya
            GeometryReader { geometry in
                badgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
