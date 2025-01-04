//
//  LittleLemonMenuTests.swift
//  LittleLemonMenuTests
//
//  Created by Swain, Susrut (Cognizant) on 05/01/25.
//

import XCTest
@testable import LittleLemonMenu

final class MenuItemTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testMenuItemTitleInitialization() {
        let expectedTitle = "Pasta"
        let menuItem = MenuItem(title: expectedTitle, ingredients: [.pasta], price: 10.0, menuCategory: .food, ordersCount: 20)
        
        let actualTitle = menuItem.title
        
        XCTAssertEqual(expectedTitle, actualTitle, "Menu Item title should be initialized correctly")
    }

   func testMenuItemIngredientsInitialization() {
       let expectedIngredient: [Ingredient] = [.broccoli, .spinach, .carrot]
       let menuItem = MenuItem(title: "Veggie Mix", ingredients: expectedIngredient, price: 10.0, menuCategory: .food, ordersCount: 20)
       
       let actualIngredients = menuItem.ingredients
       
       XCTAssertEqual(expectedIngredient, actualIngredients, "Menu Item ingredients should be initialized correctly")
   }
}
