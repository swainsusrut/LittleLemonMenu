//
//  MenuItemsView.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 02/01/25.
//

import SwiftUI

struct MenuItemsView: View {
    @ObservedObject var menuViewVM: MenuViewViewModel
    @State private var isActive = false
    @State private var selectedMenuItem: MenuItem = MenuMockData.foodItems[0]

    private let adaptiveColumn = [
        GridItem(.adaptive(minimum: 90), alignment: .center)
    ]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            LazyVGrid(columns: adaptiveColumn, spacing: 10) {
                
                ForEach(MenuCategory.allCases, id: \.self) { category in
                    Section(header: Text(category.rawValue)
                        .padding()
                        .font(.title)
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)) {
                        ForEach($menuViewVM.menuItems) { item in
                            if item.menuCategory.wrappedValue == category {
                                MenuCell(menuItem: item)
//                                    .background(navigationDestination(isPresented: $isActive, destination: {
//                                        MenuItemDetailsView(selectedMenuItem: $selectedMenuItem)
//                                    }))
                                    .onTapGesture {
                                        self.selectedMenuItem = item.wrappedValue
                                        isActive.toggle()
                                    }
                            }
                        }
                    }
                }
                
                NavigationLink("", destination: MenuItemDetailsView(selectedMenuItem: $selectedMenuItem), isActive: $isActive)
                
//                Section(header: Text(MenuCategory.drink.rawValue)
//                    .font(.title)
//                    .bold()
//                    .frame(alignment: .leading)) {
//                    ForEach($menuViewVM.menuItems) { item in
//                        if item.menuCategory.wrappedValue == MenuCategory.drink {
//                            MenuCell(menuItem: item)
//                        }
//                    }
//                }
            }
            .padding()
        }
    }
}

#Preview {
    MenuItemsView(menuViewVM: MenuViewViewModel.shared)
}
