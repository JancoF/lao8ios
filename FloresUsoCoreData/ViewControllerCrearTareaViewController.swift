//
//  ViewControllerCrearTareaViewController.swift
//  FloresUsoCoreData
//
//  Created by Noe Flores on 29/04/24.
//

import UIKit

class ViewControllerCrearTareaViewController: UIViewController {
    
    
    @IBOutlet weak var txtNombreTarea: UITextField!
    
    @IBOutlet weak var swImportante: UISwitch!
    
    @IBAction func agregar(_ sender: Any) {
        let tarea = Tarea()
        tarea.nombre = txtNombreTarea.text!
        tarea.importante = swImportante.isOn
        anteriorVC.tareas.append(tarea)
        anteriorVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    var anteriorVC  = ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
