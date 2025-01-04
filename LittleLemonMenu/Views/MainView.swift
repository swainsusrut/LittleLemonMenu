//
//  ContentView.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 02/01/25.
//

import SwiftUI

struct MainView: View {
    @State private var showSheetPresented: Bool = false
    
    var body: some View {
        NavigationView {
            MenuItemsView(menuViewVM: MenuViewViewModel.shared)
           
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(trailing: Button(action: {
                    print("Filter button pressed!!")
                    self.showSheetPresented = true
                }, label: {
                    Image(systemName: "slider.horizontal.3")
                })
                .sheet(isPresented: $showSheetPresented, content: {
                    MenuItemsOptionView(showSheetPresented: $showSheetPresented)
                })
            )
        }
    }
}

#Preview {
    MainView()
}
