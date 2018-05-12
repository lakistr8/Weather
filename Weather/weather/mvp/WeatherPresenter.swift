//
//  WeatherPresenter.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import UIKit

class WeatherPresenter: BasePresenter {
    
    
    
    override func getSubscriber(data: BaseData) {
        super.getSubscriber(data: data)
    }
    
    func getCurrentData(search:String) {
        callMethod(method: model().currentDataUsingSearch(string: search))
    }
    
    func model() -> WeatherModel {
        return localModel as! WeatherModel
    }
}
