//
//  MenuCell.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 03/01/25.
//

import SwiftUI

struct MenuCell: View {
    @Binding var menuItem: MenuItem
    
    var body: some View {
        VStack(spacing: 8, content: {
            Image("Food")
                .resizable()
                .frame(width: 100, height: 90, alignment: .top)
                .scaledToFit()
            Text($menuItem.title.wrappedValue)
                .foregroundStyle(.black)
                .font(.headline)
                .frame(alignment: .bottom)
                .multilineTextAlignment(.center)
                .lineLimit(2)
        })
        .frame(height: 150, alignment: .top)
    }
}

#Preview {
    MenuCell(menuItem: .constant(MenuMockData.foodItems[0]))
}
