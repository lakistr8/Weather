//
//  WeatherModel.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import UIKit
import RxSwift

class WeatherModel: BaseModel {
    
    
    func currentDataUsingSearch(string: String) -> Observable<BaseData> {
        return getData(urlPath: "q=\(string)")
    }
    
}
