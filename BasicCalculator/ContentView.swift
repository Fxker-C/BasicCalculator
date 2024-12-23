//
//  ContentView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentNumber = "0"
    @State private var previousNumber = "0"
    @State private var operation:String? = nil
    
    var body: some View {
        VStack {
            HStack{
                Button("1"){numberPressed("1")}
                Button("2"){numberPressed("2")}
            }
        }
    }
    
    func numberPressed(_ number:String){
        if currentNumber == "0" {
            currentNumber = number
        }else{
            currentNumber += number
        }
    }
    
    func clear(){
        currentNumber = "0"
        previousNumber = "0"
        operation = nil
    }
}

#Preview {
    ContentView()
}
