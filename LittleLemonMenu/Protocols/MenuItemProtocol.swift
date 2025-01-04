//
//  MenuItemProtocol.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 03/01/25.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price : Double { get }
    var title : String { get }
    var menuCategory : MenuCategory { get }
    var ordersCount : Int { get set }
    var priceRoundedOff : Int { get set }
    var ingredients : [Ingredient] { get set }
}
