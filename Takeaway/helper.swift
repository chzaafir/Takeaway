//
//  helper.swift
//  Takeaway
//
//  Created by Zaafir on 2/4/24.
//

import Foundation

enum Categorias{
    case mediterranea
    case arabe
    case asiatica
    case hindu
}

//var arrayArabe = filtrarDatos(categoria: .mediterranea)

func filtrarDatos(by categoria:Categorias) -> [Comida]{
    var arrayFiltrado = [Comida]()
    
    for comida in datosComida{
        if comida.categoria == categoria{
            arrayFiltrado.append(comida)
        }
    }
    
    return arrayFiltrado
}
