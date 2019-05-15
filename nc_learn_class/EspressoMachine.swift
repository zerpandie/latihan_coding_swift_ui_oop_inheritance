/*
//  EspressoMachine.swift
//  nc_learn_class
//
//  Created by Zorro Pandiangan on 15/05/19.
//  Copyright © 2019 Zorro Pandiangan. All rights reserved.
*/

import Foundation


class EspressoMachine : Machine  {
    
    var numOfBeans: Int = 2000
    let numOfGroupHeads: Int
    let machineBrand: String
    var numOfWaters: Int
    
    
    init(numOfGroupHeads: Int, machineBrand: String, waters: Int)   {
        // stored properties statement
        self.numOfGroupHeads = numOfGroupHeads
        self.machineBrand = machineBrand
        numOfWaters = waters
    }
    
    func addWaters(waters: Int)    {
            numOfWaters = numOfWaters + waters
    }
    
    
    func setGroupHeadOn(numOfGroupHeads: Int)   { }
    
    
    func addBeans(coffeeBeans: Int) {
        numOfBeans = numOfBeans + coffeeBeans
    }
    
    func makeEspresso()   {
        numOfBeans = numOfBeans - 2
        numOfWaters = numOfWaters - 1
    }
    
    
    
}
