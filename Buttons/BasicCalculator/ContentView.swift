//
//  ContentView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 19/12/24.
//
/*
import SwiftUI

struct ContentView: View {
    
    @State var currentNumber = "0"
    @State var previousNumber = "0"
    @State var operation:String? = nil
    
    var body: some View {
        VStack{
            Text("El resultado es \(currentNumber)")
                .font(.title)
                .padding()
            
            VStack {
                HStack{
                    Button("1"){numberPressed("1")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("2"){numberPressed("2")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("3"){numberPressed("3")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                }
                HStack{
                    Button("4"){numberPressed("4")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("5"){numberPressed("5")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("6"){numberPressed("6")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                }
                HStack{
                    Button("7"){numberPressed("7")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("8"){numberPressed("8")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("9"){numberPressed("9")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                }
                HStack{
                    Button("0"){numberPressed("0")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("."){numberPressed(".")}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                    Button("C"){clear()}
                        .padding(10)
                        .background(.red)
                        .cornerRadius(16)
                }
                
                
                HStack {
                    Button("+") { operationPressed("+") }
                        .padding(10)
                        .background(.orange)
                        .cornerRadius(16)
                    Button("-") { operationPressed("-") }
                        .padding(10)
                        .background(.orange)
                        .cornerRadius(16)
                    Button("x") { operationPressed("x") }
                        .padding(10)
                        .background(.orange)
                        .cornerRadius(16)
                    Button("/") { operationPressed("/") }
                        .padding(10)
                        .background(.orange)
                        .cornerRadius(16)
                }
                
                Button("="){
                    calculateResult()
                }
                .padding()
                .background(Color.green)
                .cornerRadius(16)
                .foregroundColor(.white)
                .font(.title)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.gray)
    }
    
    
    func numberPressed(_ number:String){
        if currentNumber == "0" {
            currentNumber = number
        }else{
            currentNumber += number
        }
    }
    
    
    func operationPressed(_ op:String){
        if currentNumber != "0"{
            previousNumber = currentNumber
            currentNumber = "0"
            operation = op
        }
    }
    
    func calculateResult(){
        guard let previous = Double(previousNumber),
              let current = Double(currentNumber) else{
            return
        }
        
        switch operation {
        case "+":
            currentNumber = String(previous + current)
        case "-":
            currentNumber = String(previous - current)
        case "x":
            currentNumber = String(previous * current)
        case "/":
            if current != 0 {
                currentNumber = String(previous / current)
            }else{
                currentNumber = "error"
            }
        default:
            break
        }
        operation = nil
        
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
*/
import SwiftUI

struct ContentView: View{
    var body: some View{
        VStack{
            
        }
    }
}

#Preview {
    ContentView()
}
