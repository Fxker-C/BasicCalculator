//
//  MainView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//

import SwiftUI

struct MainView: View {
    @State private var selectedView: SelectedView = .calculator

    var body: some View {
        VStack {
            HeaderTabs(selectedView: $selectedView)
            Spacer()
            
            switch selectedView {
            case .calculator:
                CalculatorView()
            case .converter:
                ConverterView()
            case .history:
                HistoryView()
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MainView()
}

