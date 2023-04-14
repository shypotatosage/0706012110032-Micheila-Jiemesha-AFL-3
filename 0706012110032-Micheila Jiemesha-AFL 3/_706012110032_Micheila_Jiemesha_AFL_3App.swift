//
//  _706012110032_Micheila_Jiemesha_AFL_3App.swift
//  0706012110032-Micheila Jiemesha-AFL 3
//
//  Created by MacBook Pro on 11/04/23.
//

import SwiftUI

@main
struct _706012110032_Micheila_Jiemesha_AFL_3App: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }

        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
    }
}
