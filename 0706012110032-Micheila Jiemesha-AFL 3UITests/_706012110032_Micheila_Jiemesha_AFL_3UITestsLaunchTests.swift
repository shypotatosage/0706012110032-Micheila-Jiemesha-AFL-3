//
//  _706012110032_Micheila_Jiemesha_AFL_3UITestsLaunchTests.swift
//  0706012110032-Micheila Jiemesha-AFL 3UITests
//
//  Created by MacBook Pro on 11/04/23.
//

import XCTest

final class _706012110032_Micheila_Jiemesha_AFL_3UITestsLaunchTests: XCTestCase {

    override class var runsForEachTargetApplicationUIConfiguration: Bool {
        true
    }

    override func setUpWithError() throws {
        continueAfterFailure = false
    }

    func testLaunch() throws {
        let app = XCUIApplication()
        app.launch()

        // Insert steps here to perform after app launch but before taking a screenshot,
        // such as logging into a test account or navigating somewhere in the app

        let attachment = XCTAttachment(screenshot: app.screenshot())
        attachment.name = "Launch Screen"
        attachment.lifetime = .keepAlways
        add(attachment)
    }
}
