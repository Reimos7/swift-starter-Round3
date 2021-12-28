//
//  Step1.swift
//  CodeStarterCamp_Week3
//
//  Created by 조성훈 on 2021/12/22.
//

//
import Foundation

class Person {
    let name: String
    var money: Int
    
    init (name: String, money: Int){
        self.name = name
        self.money = money
    }
    
    func buyCoffee(coffee: Coffee, coffeeShop: CoffeeShop) {
        print("\(coffee)을(를) 구입하려 합니다.")
        coffeeShop.takeOrder(coffee: coffee, coffeeShop: coffeeShop)
    }
}

class CoffeeShop {
    var barista: Person?
    var customer: Person?
    var salesRevenue: Int = 0
    var menuBoard: [Coffee : Int]
    var pickUpTable: Coffee? {
        willSet {
            guard let customerOfCoffeeShop = customer else { return }
            print("\(customerOfCoffeeShop.name)님의 커피가 준비되었습니다. 픽업대에서 가져가주세요.")
        }
    }
    
    init (menuBoard: [Coffee : Int]) {
        self.menuBoard = menuBoard
    }
    
    func takeOrder(coffee: Coffee, coffeeShop: CoffeeShop) {
        if menuBoard.keys.contains(coffee) {
            print("\(coffee)을(를) 주문하셨습니다.")
            guard let coffeePrice = menuBoard[coffee] else { return }
            guard let customerMoney = customer?.money else { return }
            if coffeePrice > customerMoney {
                print("잔액이 \(coffeePrice - customerMoney)원만큼 부족합니다. ")
            } else {
                print("결제되셨습니다. \(coffee)이(가) 나오면 불러드리겠습니다.")
                calculateMoney(coffee: coffee)
            }
        } else {
            print("\(coffee)은(는) 판매하지 않습니다.")
        }
    }
    
    func calculateMoney(coffee: Coffee) {
        guard let coffeePrice = menuBoard[coffee] else { return }
        salesRevenue += coffeePrice
        customer?.money -= coffeePrice
        serveOnPickUpTable(coffee: coffee)
    }
    
    func serveOnPickUpTable(coffee: Coffee) {
        pickUpTable = coffee
    }
}

enum Coffee {
    case americano, cafeLatte, espresso, cappuccino, cafeMocha
}

var misterLee = Person(name: "misterLee", money: 100_000)
var missKim = Person(name: "missKim", money: 6_000)
var yagombucks = CoffeeShop(menuBoard: [.americano : 4000,
                                        .cafeLatte : 4200,
                                        .espresso : 3000,
                                        .cappuccino : 4300,
                                        .cafeMocha : 4500])

//yagombucks.barista = misterLee
//yagombucks.customer = missKim
//
//missKim.buyCoffee(coffee: .americano, coffeeShop: yagombucks)
//print(missKim.money)
//print(yagombucks.salesRevenue)
//
//missKim.buyCoffee(coffee: .cappuccino, coffeeShop: yagombucks)
//print(missKim.money)
//print(yagombucks.salesRevenue)


