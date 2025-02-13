//
//  ForeignExchangeView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 11/02/25.
//

import SwiftUI

struct ForeignExchangeView: View {     

    var body: some View {
        VStack {
            Text("Divisas")
                .font(.largeTitle)
        }.navigationTitle("Divisas") // Agrega el título
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    ForeignExchangeView()
}
