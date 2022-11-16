//
//  SwiftTestingUITests.swift
//  SwiftTestingUITests
//
//  Created by Fatih Filizol on 16.11.2022.
//

import XCTest

final class SwiftTestingUITests: XCTestCase {

    func testToDoItem () throws {
        
        
        let app = XCUIApplication()
        app.launch()
        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.cells.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1)
        
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do list").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do list")
        okButton.tap()
        
        XCTAssertTrue(addedCell.exists)
                
              
        
    }
    
    func testDeleteItem () throws {
        
        
        let app = XCUIApplication()
        app.launch()

        
        let addButton = app.navigationBars["SwiftTesting.View"].buttons["Add"]
        let elementsQuery = app.alerts["Add Item"].scrollViews.otherElements
        let textField = elementsQuery.collectionViews.cells.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 1)
        
        let okButton = elementsQuery.buttons["OK"]
        let addedCell = app.tables.cells.containing(.staticText, identifier:"my to do list").element
        
        addButton.tap()
        textField.tap()
        textField.typeText("my to do list")
        okButton.tap()

        let tablesQuery = app.tables
        addedCell.swipeLeft()
        tablesQuery.buttons["Delete"].tap()
        
        
        
    }
    
}
