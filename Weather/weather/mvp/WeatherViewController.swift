//
//  WeatherViewController.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import UIKit

class WeatherViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func initPresenter() {
        presenter = WeatherPresenter(localView: self, localModel: WeatherModel(view: self))
    }
    

}
