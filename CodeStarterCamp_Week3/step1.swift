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
    var sales: Double = 100.0
    var menu: Dictionary = [String: Int]()
    var pickUpTable =  [Coffee?]()
    var barista: Person?
    
    func getOrder(is order: Coffee) {
        print("\(order) 주문을 받았습니다.")
        
    }
    
    mutating func makeCoffee(is order: Coffee) {
        print("\(order)를 제조하였습니다.")
        pickUpTable.append(order)
    }
}


