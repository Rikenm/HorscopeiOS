//
//  HoroscopeModel.swift
//  Horscope
//
//  Created by Biken Maharjan on 7/8/18.
//  Copyright © 2018 Riken Maharjan. All rights reserved.
//

import Foundation

/*{ "sunsign": "Aquarius", "credit": "(c) Kelli Fox, The Astrologer, http://new.theastrologer.com", "date": "2018-03-09", "horoscope": "Your independent streak is a mile wide today. If someone tries to tell you how to think, you'll resist! You want to chart your own course. If there's a new idea or theory to discover, you'll find it on your own. Of course, you're savvy enough to recognize a good teacher when you see one. If someone offers you advice or other insight, take it for what it's worth.(c) Kelli Fox, The Astrologer, http://new.theastrologer.com", "meta": { "mood": "wonderful", "keywords": "adaptable, self expressive", "intensity": "59%" } }*/

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
