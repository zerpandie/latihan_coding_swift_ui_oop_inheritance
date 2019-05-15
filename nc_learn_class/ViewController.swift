//
//  ViewController.swift
//  nc_learn_class
//
//  Created by Zorro Pandiangan on 15/05/19.
//  Copyright © 2019 Zorro Pandiangan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var espressoMachine: EspressoMachine!
    
    @IBOutlet weak var beansLabel: UILabel!
    
    @IBOutlet weak var waterLabel: UILabel!
    
    @IBOutlet weak var brandLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        espressoMachine = EspressoMachine(numOfGroupHeads: 2, machineBrand: " La Marzocco", waters: 500)
        print("Espresso Machine bermerek \(espressoMachine.machineBrand) memiliki Group Head sebanyak: \(espressoMachine.numOfGroupHeads), Jumlah air non-mineral: \(espressoMachine.numOfWaters)")
        
        updateLabel()
        print("Jumlah motor : \(espressoMachine.motor) pcs. Kemudian tegangannya sebesar = \(espressoMachine.voltage) volt.")
        
        
    }
    
    func updateLabel()  {
        waterLabel.text = String(espressoMachine.numOfWaters)
        brandLabel.text = espressoMachine.machineBrand
    }
    
    @IBAction func addWaterButton(_ sender: Any) {
        espressoMachine.addWaters(waters: 30)
        updateLabel()
    }
    
}

