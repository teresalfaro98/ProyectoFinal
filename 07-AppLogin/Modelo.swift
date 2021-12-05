//
//  Modelo.swift
//  07-AppLogin
//
//  Created by MTWDM_2021 on 22/10/21.
//

import Foundation

//MARK: Declaración global
var lista : [EntidadUsuario] = []

class EntidadUsuario {
    
    init(usuario:String, password:String) {
        self.usuario = usuario
        self.password = password
    }
    
    var usuario : String = ""
    var password: String = ""
    
}
