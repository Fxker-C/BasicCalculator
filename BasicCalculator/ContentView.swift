//
//  ContentView.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 19/12/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var currentNumber = 0
    
    var body: some View {
        VStack {
            HStack{
                Button("1"){numberPressed("7")}
            }
        }
    }
    
    func numberPressed(_ number:String){
        
    }
}

#Preview {
    ContentView()
}
