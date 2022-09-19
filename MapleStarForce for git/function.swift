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
    var percentage:Int
    var destoryPercentage:Double
    
    init( star : Int, num : Int, dec: Int, per: Int, per2: Double) {
        self.star = star
        self.chanceTime = num
        self.decision = dec
        self.percentage = per
        self.destoryPercentage = per2
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
            item!.percentage = 95 - 5 * item!.star
        }
    case 1...2:
        if percentage <= (95 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 95 - 5 * item!.star
        } else {
            item!.decision = 2
        }
    case 3...9:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 95 - 5 * item!.star
        } else {
            item!.decision = 2
        }
    case 10:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 95 - 5 * item!.star
        } else {
            item!.decision = 2
        }
    case 11:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 95 - 5 * item!.star
        }
        
    case 12:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 1.3
        } else if percentage > 1000 - 6 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0
        }
    case 13:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 1.4
        } else if percentage > 1000 - 13 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 1.3
        }
    case 14:
        if percentage <= (100 - 5 * item!.star) * 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        } else if percentage > 1000 - 14 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 1.3
        }
    case 15:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        } else if percentage > 1000 - 21 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        }
    case 16:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        } else if percentage > 1000 - 21 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        }
    case 17:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 2.8
        } else if percentage > 1000 - 21 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        }
    case 18:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 2.8
        } else if percentage > 1000 - 28 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 2.1
        }
    case 19:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 7.0
        } else if percentage > 1000 - 28 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 2.8
        }
    case 20:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 30
            item!.destoryPercentage = 7.0
        } else if percentage > 1000 - 70 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 7.0
        }
    case 21:
        if percentage <= 300 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 3
            item!.destoryPercentage = 19.4
        } else if percentage > 1000 - 70 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item?.destoryPercentage = 7.0
        }
    case 22:
        if percentage <= 30 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 20
            item!.destoryPercentage = 29.4
        } else if percentage > 1000 - 194 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 30
            item!.destoryPercentage = 7.0
        }
    case 23:
        if percentage <= 20 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.percentage = 10
            item!.destoryPercentage = 39.6
        } else if percentage > 1000 - 294 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 20
            item!.destoryPercentage = 29.4
        }
    case 24:
        if percentage <= 10 || item?.chanceTime == 2 {
            item!.star = item!.star + 1
            item!.chanceTime = 0
            item!.decision = 1
            item!.destoryPercentage = 0
        } else if percentage > 1000 - 396 {
            item!.star = 12
            item!.chanceTime = 0
            item!.decision = 3
            item!.percentage = 95 - 5 * item!.star
            item!.destoryPercentage = 0.6
        } else {
            item!.star = item!.star - 1
            item!.chanceTime = item!.chanceTime + 1
            item!.decision = 2
            item!.percentage = 10
            item!.destoryPercentage = 39.6
        }
                          

    default:
        print("ERROR")
    }
    
}

