//
//  HeaderTabs.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//
import SwiftUI

struct HeaderTabs: View {
    @Binding var selectedView: SelectedView

    var body: some View {
        HStack(spacing: 20) {
            TabButton(title: "Calculadora", view: .calculator, selectedView: $selectedView)
            TabButton(title: "Convertidor", view: .converter, selectedView: $selectedView)
            TabButton(title: "Historial", view: .history, selectedView: $selectedView)
        }
        .padding()
    }
}

struct TabButton: View {
    let title: String
    let view: SelectedView
    @Binding var selectedView: SelectedView

    var body: some View {
        Button(action: { selectedView = view }) {
            Text(title)
                .foregroundColor(selectedView == view ? .blue : .accentColor)
                .fontWeight(selectedView == view ? .bold : .regular)
        }
    }
}
