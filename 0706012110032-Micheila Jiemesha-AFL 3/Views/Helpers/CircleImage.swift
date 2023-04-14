//
//  CircleImage.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    
    var body: some View {
        // Clip Shape Buat Bikin Image Jdi Bulat, Overlay Untuk Bikin Border Line Putih, Shadow Buat Efek Melayang
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

// Preview
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("turtlerock"))
    }
}
