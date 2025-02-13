//
//  ConverterView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//

import SwiftUI
/*
struct ConverterView: View {
    @State private var selectedCategory: ConversionCategory?
    
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]
    
    var body: some View {
        NavigationStack{
            VStack {
                if let category = selectedCategory {
                    Group {
                        getView(for: category)
                    }
                    .transition(.move(edge: .trailing)) // Animación al cambiar de vista
                } else {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(ConversionCategory.allCases, id: \.self) { category in
                            CategoryButton(category: category) {
                                withAnimation {
                                    selectedCategory = category
                                }
                            }
                        }
                    }
                    .padding()
                }
            }
        }
    }
    
    // Función que devuelve la vista correspondiente
    @ViewBuilder
    private func getView(for category: ConversionCategory) -> some View {
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
*/

struct ConverterView: View {
    let columns = [
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20),
        GridItem(.flexible(), spacing: 20)
    ]

    var body: some View {
        NavigationStack {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(ConversionCategory.allCases, id: \.self) { category in
                    NavigationLink(destination: getView(for: category)) {
                        CategoryButton(category: category) { }
                    }
                    .buttonStyle(.plain) // Evita que el botón cambie su diseño
                }
            }
            .padding()
            .navigationTitle("Conversor")
        }
    }

    @ViewBuilder
    private func getView(for category: ConversionCategory) -> some View {
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
