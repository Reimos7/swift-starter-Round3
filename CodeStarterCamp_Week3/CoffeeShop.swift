//
//  CoffeeShop.swift
//  CodeStarterCamp_Week3
//
//  Created by jeseoyoung on 2024/10/04.
//

import Foundation

class CoffeeShop {
    var interior: String
    var sales: Int
    var menu: Dictionary<Coffee, Int> = [:]
    var pickUpTable = [Coffee?]()
    var barista: Person
    
    init(interior: String, sales: Int, menu: Dictionary<Coffee, Int>, pickUpTable: [Coffee?] = [Coffee?](), barista: Person) {
        self.interior = interior
        self.sales = sales
        self.menu = menu
        self.pickUpTable = pickUpTable
        self.barista = barista
    }
    
    func takeOrder(for order: Coffee) {
        print("\(order) 주문을 받았습니다.")
        
        guard let price = menu[order] else{
            return
        }
        sales = sales + price
    }
    
    func makeCoffee(to order: Coffee) {
        print("\(order)를 제조하였습니다.")
        pickUpTable.append(order)
    }
}
