//
//  BaseViewProtocol.swift
//  SwiftSugar
//
//  Created by sundong on 2021/4/20.
//  Copyright © 2021 MAC. All rights reserved.
//

import Foundation

protocol BaseViewInputProtocol: class {
    func setup()
}

protocol BaseViewOutputProtocol: class {
    func viewDidLoad()
    func viewWillAppear()
    func viewDidAppear()
    func viewWillLayoutSubviews()
    func viewDidLayoutSubviews()
    func viewWillDisappear()
    func viewDidDisappear()
}
