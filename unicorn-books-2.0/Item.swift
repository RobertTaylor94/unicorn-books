//
//  Item.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
