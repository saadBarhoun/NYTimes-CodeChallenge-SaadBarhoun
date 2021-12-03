//
//  NewsMVVMUITests.swift
//  NewsMVVMUITests
//
//  Created by Saad barhoun on 11/11/2021.
//

import XCTest

class NewsMVVMUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()
//        app.staticTexts["A new treatment using stem cells that produce insulin has surprised experts and given them hope for the 1.5 million Americans living with the disease."].swipeDown()
        //app.tables/*@START_MENU_TOKEN@*/.staticTexts["It’s Never Too Late to Pick Up Your Life and Move to Italy"]/*[[".cells.staticTexts[\"It’s Never Too Late to Pick Up Your Life and Move to Italy\"]",".staticTexts[\"It’s Never Too Late to Pick Up Your Life and Move to Italy\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
        //hollyHerrmannVowedToMoveToItalyWhenSheWas20HerDreamCameTrue38YearsLaterStaticText.swipeDown()
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
