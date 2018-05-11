//
//  BaseViewController.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, BaseViewControllerProtocol {
    
    var presenter: BasePresenter? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initPresenter()
    }

    func initPresenter() {
        preconditionFailure("This method must be override")
    }

}
