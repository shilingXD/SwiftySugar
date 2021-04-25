//
//  BasePresenter.swift
//  SwiftSugar
//
//  Created by sundong on 2021/4/20.
//  Copyright © 2021 MAC. All rights reserved.
//

import Foundation

class BasePresenter {
    var baseViewInputDelegate: BaseViewInputProtocol?
    var baseInteractorInputDelegate: BaseInteractorInputProtocol?
}

extension BasePresenter: BaseViewOutputProtocol {
    @objc func viewDidLoad() {
            
    }
    
    @objc func viewWillAppear() {
            
    }
    
    @objc func viewDidAppear() {
            
    }
    
    @objc func viewWillLayoutSubviews() {
            
    }
    
    @objc func viewDidLayoutSubviews() {
            
    }
    
    @objc func viewWillDisappear() {
            
    }
    
    @objc func viewDidDisappear() {
            
    }
}

extension BasePresenter: BaseInteractorOutputProtocol {
    
}
