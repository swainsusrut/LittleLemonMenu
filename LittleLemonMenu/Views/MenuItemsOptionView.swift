//
//  MenuItemsOptionView.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 02/01/25.
//

import SwiftUI

struct MenuItemsOptionView: View {
    @Binding var showSheetPresented: Bool
    
    var body: some View {
        NavigationView {
            List(content: {
                Section("Selected Categories".uppercased()) {
                    ForEach(MenuCategory.allCases, id: \.rawValue){ category in
                        Text(category.rawValue)
                    }
                }
                Section("Sort By".uppercased()) {
                    ForEach(SortOptions.allCases, id: \.rawValue){ option in
                        Text(option.rawValue)
                    }
                }
            })
            .navigationTitle("Filter")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                self.showSheetPresented.toggle()
                }, label: {
                    Text("Done")
                })
            )
        }
        .statusBarHidden(false)
    }
}

#Preview {
    MenuItemsOptionView(showSheetPresented: .constant(true))
}
