//
//  MenuViewViewModel.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 03/01/25.
//

import SwiftUI

class MenuViewViewModel: ObservableObject {
    static let shared = MenuViewViewModel()
    
    @Published var menuItems: [MenuItem] = []
    @Published var selectedCategory: MenuCategory = .food
    @Published var selectedSortOption: SortOptions = .alphabeticalOrder

    private init() {
        loadAllMenuItems()
    }
    
    func loadAllMenuItems() {
        menuItems = MenuMockData.foodItems
        menuItems.append(contentsOf: MenuMockData.drinkItems)
        menuItems.append(contentsOf: MenuMockData.dessertItems)
    }
    
    func loadCategorisedMenuItems() {
        switch selectedCategory {
        case .food:
            menuItems = MenuMockData.foodItems
        case .drink:
            menuItems = MenuMockData.drinkItems
        case .dessert:
            menuItems = MenuMockData.dessertItems
        }
    }
    
    func loadSortedMenuItems() {
        switch selectedSortOption {
        case .popularity:
            menuItems.sort { $0.ordersCount > $1.ordersCount }
        case .price:
            menuItems.sort { $0.price < $1.price }
        case .alphabeticalOrder:
            menuItems.sort {$0.title < $1.title}
        }
    }
}
