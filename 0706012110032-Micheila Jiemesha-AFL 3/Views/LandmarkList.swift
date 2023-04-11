//
//  LandmarkList.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
