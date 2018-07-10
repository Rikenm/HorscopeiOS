//
//  HoroscopeModel.swift
//  Horscope
//
//  Created by Biken Maharjan on 7/8/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import Foundation


struct Horoscope:Codable{
    var sunsign:String
    var credit:String?
    var date: String
    var horoscope:String
    var meta:meta
  
    struct meta:Codable{
        var mood:String
        var keywords:String
        var intensity:String
    }
}
