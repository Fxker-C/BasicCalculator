//
//  ConverterView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//

import SwiftUI

struct ConverterView: View {
    @State private var selectedCategory: ConversionCategory?

    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        NavigationStack {
            VStack {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(ConversionCategory.allCases, id: \.self) { category in
                        CategoryButton(category: category) {
                            selectedCategory = category
                        }
                    }
                }
                .padding()
            }
            .navigationDestination(item: $selectedCategory) { category in
                switch category {
                case .divisas: ForeignExchangeView()
                case .longitud: LengthView()
                case .masa: MassView()
                case .area: AreaView()
                case .tiempo: TimeView()
                case .datos: DataView()
                case .descuento: DiscountView()
                case .volumen: VolumeView()
                case .sistemaNumerico: NumberSystemView()
                case .velocidad: SpeedView()
                case .temperatura: TemperatureView()
                case .imc: IMCView()
                }
            }
        }
    }
}


