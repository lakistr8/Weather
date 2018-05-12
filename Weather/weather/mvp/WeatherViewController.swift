//
//  WeatherViewController.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import UIKit

class WeatherViewController: BaseViewController {

    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter().getCurrentData(search:textField.text ?? "Belgrade")
    }

    override func initPresenter() {
        presenter = WeatherPresenter(localView: self, localModel: WeatherModel(view: self))
    }
    
    func presenter() -> WeatherPresenter {
        return presenter as! WeatherPresenter
    }
    
    @IBAction func search(_ sender: UIButton!) {
        presenter().getCurrentData(search:textField.text ?? "Belgrade")
    }
    
}
