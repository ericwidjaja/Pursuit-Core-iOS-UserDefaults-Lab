//
//  Horoscopes.swift
//  UserDefaultsLab
//
//  Created by Eric Widjaja on 9/24/19.
//  Copyright © 2019 Eric Widjaja. All rights reserved.
//

import Foundation

struct Horoscopes: Codable {
    let sunsign : String
    let date : String
    let horoscope : String
    let meta : MKI
}

struct MKI: Codable {
    let mood: String
    let keywords: String
    let intensity: String
    
}

// MARK: -- JSON from endpoint http://sandipbgt.com/theastrologer/api/horoscope/gemini/today/

//{
//    "sunsign": "Aquarius",
//    "credit": "(c) Kelli Fox, The Astrologer, http://new.theastrologer.com",
//    "date": "2018-03-09",
//    "horoscope": "Your independent streak is a mile wide today. If someone tries to tell you how to think, you'll resist! You want to chart your own course. If there's a new idea or theory to discover, you'll find it on your own. Of course, you're savvy enough to recognize a good teacher when you see one. If someone offers you advice or other insight, take it for what it's worth.(c) Kelli Fox, The Astrologer, http://new.theastrologer.com",
//    "meta": {
//        "mood": "wonderful",
//        "keywords": "adaptable, self expressive",
//        "intensity": "59%"
//    }
//}
