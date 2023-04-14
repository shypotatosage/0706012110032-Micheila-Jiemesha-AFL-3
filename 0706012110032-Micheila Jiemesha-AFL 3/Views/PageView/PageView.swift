//
//  PageView.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct PageView<Page: View>: View {
    var pages: [Page]
    @State private var currentPage = 0

    var body: some View {
        // Bottom Trailing Agar Page Control Bisa Ada Di Kanan Bawah
        ZStack(alignment: .bottomTrailing) {
            // This is the page view that can change on slide or click on the PageControl
            PageViewController(pages: pages, currentPage: $currentPage)
            
            // This is the three little dots that can also be clicked to navigate through the page
            PageControl(numberOfPages: pages.count, currentPage: $currentPage)
                .frame(width: CGFloat(pages.count * 18))
                .padding(.trailing)
        }
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView(pages: ModelData().features.map { FeatureCard(landmark: $0) })
            .aspectRatio(3 / 2, contentMode: .fit)
    }
}
