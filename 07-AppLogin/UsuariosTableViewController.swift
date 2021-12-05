//
//  UsuariosTableViewController.swift
//  07-AppLogin
//
//  Created by MTWDM_2021 on 26/11/21.
//

import UIKit

class UsuariosTableViewController: UITableViewController {
    
    var nombres = [String]();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for item in lista{
            nombres.append(item.usuario)
        }
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return nombres.count
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "celda", for: indexPath)
       cell.textLabel?.text = nombres[indexPath.row]
        return cell
    }

}
