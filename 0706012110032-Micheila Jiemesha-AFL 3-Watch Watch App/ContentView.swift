//
//  ContentView.swift
//  0706012110032-Micheila Jiemesha-AFL 3-Watch Watch App
//
//  Created by MacBook Pro on 14/04/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
