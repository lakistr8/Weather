//
//  BaseModel.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import Foundation
import RxSwift
import Alamofire

class BaseModel {
    
    var view: BaseViewController
    let baseURL: String = "http://api.openweathermap.org/data/2.5/weather?"
    let appID: String = "8a25fec691097cae8e64b4bd39ff5673"
    
    init(view: BaseViewController) {
        self.view = view
    }
    
    func getData(urlPath:String) -> Observable<BaseData> {
        var data: BaseData? = nil
        let fullUrl = URL(string: "\(baseURL)\(urlPath)&appid=\(self.appID)")
        
        return Observable<BaseData>.create({ observer in
            Alamofire.request(fullUrl!).responseJSON(completionHandler: { response in
                switch response.result {
                case .success:
                    data = BaseData(data: response.data!)
                case .failure(let error):
                    print("\(error.localizedDescription)")
                }
                observer.onNext(data!)
                observer.onCompleted()
            })
            return Disposables.create()
        })
    }
    
}
