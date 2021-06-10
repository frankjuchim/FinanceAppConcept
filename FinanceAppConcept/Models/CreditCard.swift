//
//  CreditCard.swift
//  FinanceAppConcept
//
//  Created by Frank Juchim on 16.05.21.
//

import SwiftUI

struct CreditCard: Codable, Identifiable {
    var id = UUID()
    var cardNumber: String
    var creditBalance: Double
    var expireDate: String
    var cvcCode: Int
    
    static func example() -> CreditCard {
        var cardNumber = ""
        for _ in 1...4 {
            for _ in 1...4 {
                cardNumber += "\(Int.random(in: 0...9))"
            }
            cardNumber += " "
        }
        let balance: Double = Double(Int.random(in: 1000...9999999) / 100)
        
        let month = Int.random(in: 1...12)
        let year = Int.random(in: 20...40)
        let expire = "\(month)/\(year)"
        
        let cvCode = Int.random(in: 100...999)
        
        return CreditCard(cardNumber: cardNumber, creditBalance: balance, expireDate: expire, cvcCode: cvCode)
    }
}
