//
//  Person.swift
//  CodeStarterCamp_Week3
//
//  Created by jeseoyoung on 2024/10/04.
//

import Foundation

struct Person {
    var appearance: String?
    var personality: String?
    var budget: Int
    var height: Double?
    var name: String
    
    mutating func order(_ coffee: Coffee, of coffeeShop: CoffeeShop, by name: String ) {
        guard let price = coffeeShop.menu[coffee] else {
            print("해당 커피가 존재하지 않습니다.")
            return
        }
        
        if budget >= price {
            coffeeShop.makeCoffee(coffee, from: name)
            
            budget -= price
            coffeeShop.sales += price
        } else {
            var lack = price - budget
            print("잔액이 \(lack)원만큼 부족합니다")
        }
    }
}
