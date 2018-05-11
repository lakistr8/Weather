//
//  BaseData.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import Foundation
import SwiftyJSON

class BaseData {
    
    var status: Bool = false
    var data = JSON.null
    
    init(data: Data?) {
        if data != nil {
            status = true
            self.data = JSON(data!)
        }
    }
    
}
