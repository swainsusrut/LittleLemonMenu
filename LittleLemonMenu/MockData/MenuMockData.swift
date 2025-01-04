//
//  MenuMockData.swift
//  LittleLemonMenu
//
//  Created by Swain, Susrut (Cognizant) on 03/01/25.
//

struct MenuMockData {
    
    static let foodItems = [
        MenuItem(title: "Pasta", ingredients: [.pasta, .carrot], price: 10.0, menuCategory: .food, ordersCount: 200),
        MenuItem(title: "Salad", ingredients: [.carrot, .broccoli, .spinach], price: 2.99, menuCategory: .food, ordersCount: 1992),
        MenuItem(title: "Tomato Soup", ingredients: [.tomatoSauce, .carrot, .broccoli], price: 4.99, menuCategory: .food, ordersCount: 212),
        MenuItem(title: "Roasted Broccoli", ingredients: [.broccoli], price: 2.49, menuCategory: .food, ordersCount: 152),
        MenuItem(title: "Carrot Soup", ingredients: [.carrot], price: 3.99, menuCategory: .food, ordersCount: 112),
        MenuItem(title: "Carrot Cake", ingredients: [.carrot, .tomatoSauce], price: 9.50, menuCategory: .food, ordersCount: 11),
        MenuItem(title: "Green Sauce Pasta", ingredients: [.pasta, .broccoli, .spinach], price: 10.0, menuCategory: .food, ordersCount: 201),
        MenuItem(title: "Broccoli Fry", ingredients: [.broccoli, .carrot], price: 5.49, menuCategory: .food, ordersCount: 2120),
        MenuItem(title: "Orecchiette Pasta", ingredients: [.pasta, .broccoli], price: 10.0, menuCategory: .food, ordersCount: 2932),
        MenuItem(title: "Spinach Dip", ingredients: [.spinach, .tomatoSauce], price: 2.99, menuCategory: .food, ordersCount: 2133),
        MenuItem(title: "Pasta Carbonara", ingredients: [.pasta, .broccoli, .carrot, .spinach], price: 10.0, menuCategory: .food, ordersCount: 5921),
        MenuItem(title: "Spinach Soup", ingredients: [.spinach], price: 3.09, menuCategory: .food, ordersCount: 542)
    ]
    
    static let drinkItems = [
        MenuItem(title: "Smoothie", ingredients: [.spinach, .carrot], price: 4.99, menuCategory: .drink, ordersCount: 201),
        MenuItem(title: "Green Juice", ingredients: [.spinach], price: 2.99, menuCategory: .drink, ordersCount: 305),
        MenuItem(title: "Carrot Ginger Zinger", ingredients: [.carrot, .spinach], price: 4.99, menuCategory: .drink, ordersCount: 473),
        MenuItem(title: "Green Veggie Fizz", ingredients: [.broccoli, .spinach], price: 2.99, menuCategory: .drink, ordersCount: 275),
        MenuItem(title: "Healthy Veggie Cooler", ingredients: [.broccoli, .spinach, .carrot], price: 4.99, menuCategory: .drink, ordersCount: 485),
        MenuItem(title: "Pasta Water Mocktail", ingredients: [.pasta], price: 0.99, menuCategory: .drink, ordersCount: 746),
        MenuItem(title: "Broccoli Juice", ingredients: [.broccoli], price: 2.99, menuCategory: .drink, ordersCount: 645),
        MenuItem(title: "Carrot Juice", ingredients: [.carrot], price: 4.99, menuCategory: .drink, ordersCount: 271)
    ]
    
    static let dessertItems = [
        MenuItem(title: "Carrot Spinach Tart", ingredients: [.spinach, .carrot], price: 4.99, menuCategory: .dessert, ordersCount: 301),
        MenuItem(title: "Carrot Pie", ingredients: [.carrot, .tomatoSauce], price: 2.99, menuCategory: .dessert, ordersCount: 271),
        MenuItem(title: "Carrot Muffin", ingredients: [.carrot], price: 3.99, menuCategory: .dessert, ordersCount: 294),
        MenuItem(title: "Pasta Pudding", ingredients: [.pasta], price: 1.99, menuCategory: .dessert, ordersCount: 846)
    ]
}
