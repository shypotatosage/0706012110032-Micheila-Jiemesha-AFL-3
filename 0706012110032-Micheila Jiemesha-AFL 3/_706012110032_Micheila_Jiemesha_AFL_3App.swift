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
        // Untuk Mengatur Biar Bisa Munculkan Sidebar Lagi Ketika Tidak Sengaja Tertutup
        #if !os(watchOS)
        .commands {
            LandmarkCommands()
        }
        #endif

        // Mengatur Notification Di Watch
        #if os(watchOS)
        WKNotificationScene(controller: NotificationController.self, category: "LandmarkNear")
        #endif
        
        // Mengatur Agar Bisa Ada Settings Untuk Aplikasi di Mac
        #if os(macOS)
        Settings {
            LandmarkSettings()
        }
        #endif
    }
}
