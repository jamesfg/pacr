//
//  Distance.swift
//  pacr
//
//  Created by James Garcia on 11/21/15.
//  Copyright © 2015 Whereone. All rights reserved.
//

import UIKit

class Distance: NSObject {
    
    enum Unit: Double{
        case Meter = 1
        case Mile = 1609.34
        
        func getConversion(unit: Unit)->Double{
            return self.rawValue / unit.rawValue
        }
    }

    var distance: Double = 0.0
    var title: NSString = ""
    var unit: Unit = Unit.Meter

    
    init(distance: Double, unit: Unit, title: NSString) {
        self.distance = distance
        self.title = title
        self.unit = unit
    }
    
    
    static func getDefaultDistances()->[Distance]{
        var distances:[Distance] = []
        distances.append(Distance(distance: 100,unit: .Meter,title: "100 Meters"))
        distances.append(Distance(distance: 200,unit: .Meter,title: "200 Meters"))
        distances.append(Distance(distance: 400,unit: .Meter,title: "400 Meters"))
        distances.append(Distance(distance: 800,unit: .Meter,title: "800 Meters"))
        distances.append(Distance(distance: 1600,unit: .Meter,title: "1600 Meters"))
        distances.append(Distance(distance: 3200,unit: .Meter,title: "3200 Meters"))
        distances.append(Distance(distance: 5000,unit: .Meter,title: "5K"))
        distances.append(Distance(distance: 1,unit: .Mile,title: "1 Mile"))
        distances.append(Distance(distance: 2,unit: .Mile,title: "2 Miles"))
        distances.append(Distance(distance: 3,unit: .Mile,title: "3 Miles"))
        distances.append(Distance(distance: 13.1,unit: .Mile,title: "Half Marathon"))
        distances.append(Distance(distance: 26.2,unit: .Mile,title: "Marathon"))
        
        return distances
    }
    
    func getDistanceInMeters()->Double{
        return self.unit.getConversion(.Meter) * self.distance
    }
    
    func getDistanceMultiplier(distance: Distance)->Double{
        return self.getDistanceInMeters() / distance.getDistanceInMeters()
    }
}
