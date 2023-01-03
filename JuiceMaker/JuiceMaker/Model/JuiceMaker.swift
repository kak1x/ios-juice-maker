//
//  JuiceMaker - JuiceMaker.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
// 

import Foundation

// 쥬스 메이커 타입
struct JuiceMaker {
    let fruitStore = FruitStore()
    
    func makeJuice(select juiceMenu: JuiceMenu) {
        let receipe = juiceMenu.receipe
        
        for (fruit, stock) in receipe {
            fruitStore.subtractStock(fruit: fruit, amount: stock)
            fruitStore.printStock(fruit: fruit)
        }
    }
}
