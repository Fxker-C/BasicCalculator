//
//  ButtonView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 7/02/25.
//
import SwiftUI

struct ButtonView: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void

    init(title: String, backgroundColor: Color = .gray, action: @escaping () -> Void) {
        self.title = title
        self.backgroundColor = backgroundColor
        self.action = action
    }

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.title)
                .frame(width: 70, height: 70)
                .background(backgroundColor)
                .foregroundColor(.white)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ButtonView(title: "7") { print("Pressed 7") }
}

