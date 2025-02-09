//
//  CalculatorView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//
import SwiftUI

struct CalculatorView: View {
    @StateObject private var calculator = CalculatorModel()

    let gridItems: [GridItem] = Array(repeating: .init(.flexible()), count: 4)

    var body: some View {
        VStack {

            Spacer()

            // Display de la calculadora
            Text(calculator.displayText)
                .font(.largeTitle)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
                .padding(.horizontal)

            Spacer()

            // Botones de la calculadora con nueva disposición
            LazyVGrid(columns: gridItems, spacing: 10) {
                ButtonView(title: "AC", backgroundColor: .red) { calculator.clearDisplay() }
                ButtonView(title: "⌫", backgroundColor: .orange) { calculator.deleteLast() }
                ButtonView(title: "%", backgroundColor: .gray) { calculator.setOperator("%") }
                ButtonView(title: "÷", backgroundColor: .orange) { calculator.setOperator("/") }

                ButtonView(title: "7") { calculator.appendNumber("7") }
                ButtonView(title: "8") { calculator.appendNumber("8") }
                ButtonView(title: "9") { calculator.appendNumber("9") }
                ButtonView(title: "×", backgroundColor: .orange) { calculator.setOperator("*") }

                ButtonView(title: "4") { calculator.appendNumber("4") }
                ButtonView(title: "5") { calculator.appendNumber("5") }
                ButtonView(title: "6") { calculator.appendNumber("6") }
                ButtonView(title: "-", backgroundColor: .orange) { calculator.setOperator("-") }

                ButtonView(title: "1") { calculator.appendNumber("1") }
                ButtonView(title: "2") { calculator.appendNumber("2") }
                ButtonView(title: "3") { calculator.appendNumber("3") }
                ButtonView(title: "+", backgroundColor: .orange) { calculator.setOperator("+") }

                Spacer()
                ButtonView(title: "0", backgroundColor: .gray) { calculator.appendNumber("0") }
                ButtonView(title: ".", backgroundColor: .gray) { calculator.addDecimal() }
                ButtonView(title: "=", backgroundColor: .blue) { calculator.calculateResult() }
            }
            .padding()

            Spacer()
        }
        .padding()
    }
}

#Preview {
    CalculatorView()
}
