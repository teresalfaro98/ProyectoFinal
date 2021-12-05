//
//  LoginViewController.swift
//  07-AppLogin
//
//  Created by MTWDM_2021 on 22/10/21.
//

import UIKit

class LoginViewController: UIViewController {

    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    var plist = UserDefaults.standard
    
    @IBOutlet weak var txtUsuario: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBAction func OnLogin(_ sender: Any) {
        let usuario = txtUsuario.text
        let password = txtPassword.text
        
        if (usuario == "" || password == ""){
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Login Incorrecto", message: "Existen campos vacios, validar", preferredStyle: .alert)
                    //MARK: Acciones
                    
                    alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {
                        (UIAlertAction) in print ("Se le ha dado clic en aceptar")
                    }))
          
                    present(alerta, animated: true, completion: nil)
                    
        }else{
            for item in lista{
                if usuario == item.usuario && password == item.password {
                    plist.set(usuario, forKey: "Usuario")
                    appDelegate.OnLoginSuccess()
                }
            }
            
            
            //MARK: Crear una alerta
            let alerta = UIAlertController(title: "Login Incorrecto", message: "Usuario o Contraseña Incorrecta", preferredStyle: .alert)
            //MARK: Acciones
                    
            alerta.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: {
                (UIAlertAction) in print ("Se le ha dado clic en aceptar")
            }))
          
            present(alerta, animated: true, completion: nil)
            
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        txtPassword.isSecureTextEntry = true
    }
}
