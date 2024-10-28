//
//  sort.swift
//  Ai Expense Tracker
//
//  Created by Aatif Ahmed on 10/28/24.
//

import Foundation

enum SortType: String, Codable, Identifiable, CaseIterable {
    var id: Self { self }
    case date, amount, name
}

enum SortOrder: String, Identifiable, CaseIterable {
    var id: Self { self }
    case ascending, descending   // possible error here, resolve later after push :)
}
