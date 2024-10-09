//
//  CoffeeShop.swift
//  CodeStarterCamp_Week3
//
//  Created by jeseoyoung on 2024/10/04.
//

import Foundation

class CoffeeShop {
    var interior: String?
    var sales: Int
    var menu: Dictionary<Coffee, Int> = [:]
    var pickUpTable = [Coffee?]()
    var barista: Person
    
    init(interior: String? = nil, sales: Int, menu: Dictionary<Coffee, Int>, pickUpTable: [Coffee?] = [Coffee?](), barista: Person) {
        self.interior = interior
        self.sales = sales
        self.menu = menu
        self.pickUpTable = pickUpTable
        self.barista = barista
    }
    
    func takeOrder(for coffee: Coffee) {
        print("\(coffee) 주문을 받았습니다.")
        
        guard let price = menu[coffee] else {
            return
        }
        sales = sales + price
    }
    
    func makeCoffee(_ coffee: Coffee, from name: String) {
        pickUpTable.append(coffee)
        print("\(name) 님이 주문하신 \(coffee)(이/가) 준비되었습니다. 픽업대에서 가져가주세요.")
    }
}
