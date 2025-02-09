//
//  CalculatorModel.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//
import Foundation

class CalculatorModel: ObservableObject {
    @Published var displayText: String = "0"
    private var currentValue: Double = 0
    private var previousValue: Double?
    private var currentOperator: String?
    private var isNewEntry = false

    // Agregar número al display
    func appendNumber(_ number: String) {
        if isNewEntry {
            displayText = number
            isNewEntry = false
        } else {
            displayText = (displayText == "0") ? number : displayText + number
        }
    }

    // Agregar operador
    func setOperator(_ operatorSymbol: String) {
        previousValue = Double(displayText)
        currentOperator = operatorSymbol
        isNewEntry = true
    }

    // Calcular resultado
    func calculateResult() {
        guard let previous = previousValue,
              let current = Double(displayText),
              let operation = currentOperator else { return }

        switch operation {
        case "+": currentValue = previous + current
        case "-": currentValue = previous - current
        case "*": currentValue = previous * current
        case "/":
            currentValue = (current != 0) ? previous / current : 0
        case "%":  
            currentValue = previous.truncatingRemainder(dividingBy: current)
        default: break
        }

        displayText = String(currentValue)
        previousValue = nil
        currentOperator = nil
        isNewEntry = true
    }


    // Agregar decimal
    func addDecimal() {
        if !displayText.contains(".") {
            displayText += "."
        }
    }

    // Borrar un solo dígito
    func deleteLast() {
        displayText = String(displayText.dropLast())
        if displayText.isEmpty { displayText = "0" }
    }

    // Limpiar display
    func clearDisplay() {
        displayText = "0"
        currentValue = 0
        previousValue = nil
        currentOperator = nil
    }
}
