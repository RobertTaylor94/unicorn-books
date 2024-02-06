//
//  BookProgressView.swift
//  unicorn-books-2.0
//
//  Created by Robert Taylor on 06/02/2024.
//

import SwiftUI

struct BookProgressView: View {
    
    var progress: Float
    var label: String
    
    var body: some View {
        Gauge(value: progress, in: 0...1) {
            Text(label)
        }
        .padding()
        .gaugeStyle(.linearCapacity)
        .tint(.yellow)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    BookProgressView(progress: 0.3, label: "30%")
}
