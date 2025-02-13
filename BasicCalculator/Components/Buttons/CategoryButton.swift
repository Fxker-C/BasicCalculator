//
//  CategoryButton.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 11/02/25.
//

import SwiftUI

struct CategoryButton: View {
    let category: ConversionCategory
    let action: () -> Void

    var body: some View {
        VStack {
            Image(systemName: category.systemImage)
                .font(.system(size: 30))
                .padding()
            Text(category.rawValue)
                .font(.caption)
        }
        .frame(width: 80, height: 100)
        .background(Color.gray.opacity(0.2))
        .cornerRadius(10)
        /*.onTapGesture {
            action()
        }*/
    }
}


