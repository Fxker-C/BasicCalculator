//
//  ConversionCategory.swift
//  BasicCalculator
//
//  Created by Aly Benjamin Contreras Del Pino on 11/02/25.
//
import Foundation

enum ConversionCategory: String, CaseIterable {
    case divisas = "Divisas"
    case longitud = "Longitud"
    case masa = "Masa"
    case area = "Área"
    case tiempo = "Tiempo"
    case datos = "Datos"
    case descuento = "Descuento"
    case volumen = "Volumen"
    case sistemaNumerico = "Sistema numérico"
    case velocidad = "Velocidad"
    case temperatura = "Temperatura"
    case imc = "IMC"
    
    var systemImage: String {
        switch self {
        case .divisas: return "arrow.2.circlepath"
        case .longitud: return "text.alignleft"
        case .masa: return "scalemass"
        case .area: return "square"
        case .tiempo: return "clock"
        case .datos: return "list.bullet.rectangle"
        case .descuento: return "tag"
        case .volumen: return "cube"
        case .sistemaNumerico: return "number"
        case .velocidad: return "gauge"
        case .temperatura: return "thermometer"
        case .imc: return "person"
        }
    }
}


