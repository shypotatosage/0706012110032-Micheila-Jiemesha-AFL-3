//
//  _706012110032_Micheila_Jiemesha_AFL_3_Watch_Watch_AppUITestsLaunchTests.swift
//  0706012110032-Micheila Jiemesha-AFL 3-Watch Watch AppUITests
//
//  Created by MacBook Pro on 14/04/23.
//

import XCTest

final class _706012110032_Micheila_Jiemesha_AFL_3_Watch_Watch_AppUITestsLaunchTests: XCTestCase {

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
