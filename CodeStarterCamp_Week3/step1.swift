//
//  step1.swift
//  CodeStarterCamp_Week3
//
//  Created by jeseoyoung on 2024/10/01.
//

import Foundation

struct Person {
    var appearance: String
    var personality: String
    var budget: Int = 100000
    var height: Double
    
    mutating func buyCoffee() {
        self.budget = self.budget - 5000
    }
}

enum Coffee {
    case 라떼, 아메리카노, 콜드브루, 디카페인
}

struct CoffeeShop {
    var interior: String = "모던"
    var sales: Int = 1000000
    var menu: Dictionary<Coffee, Int> = [
        .라떼: 5000,
        .아메리카노: 4500,
        .콜드브루: 6000,
        .디카페인: 4500
    ]
    
    var pickUpTable = [Coffee?]()
    var barista: Person?
    
    mutating func getOrder(is order: Coffee) {
        print("\(order) 주문을 받았습니다.")
        
        if let price = menu[order] {
            self.sales = self.sales + price
        }
    }
    
    mutating func makeCoffee(is order: Coffee) {
        print("\(order)를 제조하였습니다.")
        pickUpTable.append(order)
    }
}


