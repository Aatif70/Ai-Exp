//
//  Utils.swift
//  Ai Expense Tracker
//
//  Created by Aatif Ahmed on 10/28/24.
//

import Foundation

struct Utils {
    static let dateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM"
        return formatter
    } ()
    
    
    static let numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.isLenient = true
        formatter.numberStyle = .currency
        return formatter
    }()
    
    
}


