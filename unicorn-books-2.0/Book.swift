//
//  Item.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 05/02/2024.
//

import Foundation
import SwiftData

@Model
class Book {
    
    var title: String
    
    init(title: String) {
        self.title = title
    }
}
