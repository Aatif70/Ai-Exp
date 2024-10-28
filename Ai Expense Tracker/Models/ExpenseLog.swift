//
//  ExpenseLog.swift
//  Ai Expense Tracker
//
//  Created by Aatif Ahmed on 10/28/24.
//

import Foundation

struct ExpenseLog: Codable,Identifiable, Equatable {
    let id: Int
    let name: String
    let category: String
    let amount: Double
    let currency : String
    let date: Date
    
    var categoryEnum: Category {
        Category(rawValue: category) ?? .utilities     //initialise category, take raw value as category. if it fails use utilities.
    }
    
    init(id: Int, name: String, category: String, amount: Double, currency: String = "INR", date: Date) {
        self.id = id
        self.name = name
        self.category = category
        self.amount = amount
        self.currency = currency
        self.date = date
    }
    
}


extension ExpenseLog {
    var dateText: String {
        Utils.dateFormatter.string(from: date)
    }
    var amountText: String {
        Utils.numberFormatter.currencySymbol = currency
        return Utils.numberFormatter.string(from : NSNumber(value: amount)) ?? "\(amount)"
    }
}
