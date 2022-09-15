//
//  dataForReinforce.swift
//  MapleStarForce
//
//  Created by hyobeom seo on 2022/09/10.
//

import CoreFoundation

class Item {
    var star:Int
    var chanceTime:Int
    var decision:Int
    
    init( star : Int, num : Int, dec: Int) {
        self.star = star
        self.chanceTime = num
        self.decision = dec
    }
}
// decision == 1 -> success decision == 2 -> fail decision == 3 -> broken
func reinforce(item : Item?) -> Void {
    let percentage = Int.random(in: 1 ... 1000)
    
    switch item!.star
    {
    case 0:
        if percentage <= (95 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        }
    case 1...2:
        if percentage <= (95 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else {
            item!.decision = 2
        }
    case 3...9:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else {
            item!.decision = 2
        }
    case 10:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else {
            item!.decision = 2
        }
    case 11:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
        
    case 12:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 6 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 13:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 13 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 14:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 14 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 15:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 21 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.decision = 2
        }
    case 16...17:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 21 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 18...19:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 28 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 20:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 70 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.decision = 2
        }
    case 21:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 70 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 22:
        if percentage <= 30 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 194 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 23:
        if percentage <= 20 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 294 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
    case 24:
        if percentage <= 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
        } else if percentage > 1000 - 396 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
        }
                          

    default:
        print("ERROR")
    }
    
}

