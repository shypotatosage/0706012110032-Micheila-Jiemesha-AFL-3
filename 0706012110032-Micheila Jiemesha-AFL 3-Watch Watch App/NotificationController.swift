//
//  NotificationController.swift
//  0706012110032-Micheila Jiemesha-AFL 3-Watch Watch App
//
//  Created by MacBook Pro on 14/04/23.
//

import WatchKit
import SwiftUI
import UserNotifications

// Ini Controller Notification Di Watch
class NotificationController: WKUserNotificationHostingController<NotificationView> {

    override var body: NotificationView {
        return NotificationView()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        // This method is called when a notification needs to be presented.
        // Implement it if you use a dynamic notification interface.
        // Populate your dynamic notification interface as quickly as possible.
    }
}
