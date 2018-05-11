//
//  BasePresenter.swift
//  Weather
//
//  Created by Lazar Andonov on 5/11/18.
//  Copyright © 2018 Lazar Andonov. All rights reserved.
//

import Foundation
import RxSwift

class BasePresenter {
    
    var localView: BaseViewControllerProtocol
    var localModel: BaseModel
    var disposeBag : DisposeBag?
    
    init(localView: BaseViewControllerProtocol, localModel:BaseModel) {
        self.localView = localView
        self.localModel = localModel
        self.disposeBag = DisposeBag()
    }
    
    func getSubscriber(data: BaseData) {
        
    }
    
    func callMethod(method: Observable<BaseData>) {
        method
            .subscribeOn(ConcurrentDispatchQueueScheduler(qos: .background))
            .observeOn(MainScheduler.instance)
            .subscribe(onNext: { response in
                if response.status == true {
                    self.getSubscriber(data: response)
                }
                
            })
        .disposed(by: disposeBag!)
    }
    
}
