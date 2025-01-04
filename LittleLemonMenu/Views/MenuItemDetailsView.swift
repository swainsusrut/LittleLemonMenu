//
//  MenuItemDetailsView.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 02/01/25.
//

import SwiftUI

struct MenuItemDetailsView: View {
    @Binding var selectedMenuItem: MenuItem

    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack (spacing: 5, content: {
                Image("LittleLemon")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, alignment: .center)
                    .padding([.leading, .trailing], 70)
                    .padding([.top, .bottom], 40)
                Text("Price:")
                    .foregroundStyle(.black)
                    .font(.headline)
                    .frame(alignment: .top)
                    .multilineTextAlignment(.center)
                Text(String($selectedMenuItem.price.wrappedValue))
                    .foregroundStyle(.black)
                    .font(.callout)
                    .frame(alignment: .top)
                    .multilineTextAlignment(.center)
                Text("Ordered:")
                    .foregroundStyle(.black)
                    .font(.headline)
                    .frame(alignment: .top)
                    .multilineTextAlignment(.center)
                Text(String($selectedMenuItem.ordersCount.wrappedValue))
                    .foregroundStyle(.black)
                    .font(.callout)
                    .frame(alignment: .top)
                    .multilineTextAlignment(.center)
                Text("Ingredients:")
                    .foregroundStyle(.black)
                    .font(.headline)
                    .frame(alignment: .top)
                    .multilineTextAlignment(.center)
                List {
                    ForEach($selectedMenuItem.ingredients, id: \.self) { $item in
                        Text(String(item.rawValue))
                            .foregroundStyle(.black)
                            .font(.caption)
                            .frame(alignment: .top)
                            .multilineTextAlignment(.center)
                    }
                }
            })
            .navigationTitle($selectedMenuItem.title)
        }
    }
}

#Preview {
    MenuItemDetailsView(selectedMenuItem: .constant(MenuMockData.foodItems[1]))
}
