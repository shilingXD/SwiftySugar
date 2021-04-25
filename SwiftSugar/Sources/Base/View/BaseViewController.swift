//
//  BaseViewController.swift
//  SwiftSugar
//
//  Created by sundong on 2021/4/19.
//  Copyright © 2021 MAC. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    var baseViewOutputDelegate: BaseViewOutputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        baseViewOutputDelegate?.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        baseViewOutputDelegate?.viewWillAppear()
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        baseViewOutputDelegate?.viewDidAppear()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        baseViewOutputDelegate?.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        baseViewOutputDelegate?.viewDidLayoutSubviews()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        baseViewOutputDelegate?.viewWillDisappear()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        baseViewOutputDelegate?.viewDidDisappear()
    }
}

extension BaseViewController: BaseViewInputProtocol {
    @objc func setup() {
    }
}
