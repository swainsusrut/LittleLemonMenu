//
//  MenuItem.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 03/01/25.
//

import Foundation

struct MenuItem : Identifiable, MenuItemProtocol {
    let id = UUID()
    var title: String
    var ingredients: [Ingredient]
    var price: Double
    var menuCategory: MenuCategory
    var ordersCount: Int
    var priceRoundedOff: Int
    
    init(title: String, ingredients: [Ingredient], price: Double, menuCategory: MenuCategory, ordersCount: Int) {
        self.title = title
        self.ingredients = ingredients
        self.price = price
        self.menuCategory = menuCategory
        self.ordersCount = ordersCount
        self.priceRoundedOff = Int(self.price)
    }
}
