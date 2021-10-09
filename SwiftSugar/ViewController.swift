//
//  ViewController.swift
//  SwiftSugar
//
//  Created by 时零 on 2021/4/11.
//  Copyright © 2021 MAC. All rights reserved.
//

import UIKit

class ViewController: BaseViewController {

    let aa  = "asdasdasd"
    override func viewDidLoad() {
        super.viewDidLoad()
        let imageview = UIImageView()
        imageview.image = UIImage(color: .red).combined(with: UIImage(color: .orange))
        imageview.frame.size = CGSize(width: 100, height: 100)
        imageview.center = view.center
        imageview.isUserInteractionEnabled = true
        imageview.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(test2)))
        view.addSubview(imageview)
        className
    }

    @objc func test2() {
        print("测是")
        self.present(CategorySelectorViewController(), animated: true, completion: nil)
    }
    
    @objc func swizzled_test2() {
      
  }
 
}

extension ViewController: CrashEyeDelegate {
//    override class func doesNotRecognizeSelector(_ aSelector: Selector!) {
//        print(aSelector)
//    }
//    override func doesNotRecognizeSelector(_ aSelector: Selector!) {
//        print(aSelector)
//    }
//    override class func forwardingTarget(for aSelector: Selector!) -> Any? {
//        print(aSelector)
//        return nil
//    }
//    override func forwardingTarget(for aSelector: Selector!) -> Any? {
//        print(aSelector)
//        return super.forwardingTarget(for: aSelector)
//    }
//    override class func resolveClassMethod(_ sel: Selector!) -> Bool {
//        return super.resolveClassMethod(sel)
//    }
//
//    override class func resolveInstanceMethod(_ sel: Selector!) -> Bool {
//            return super.resolveInstanceMethod(sel)
//    }
//    
    func crashEyeDidCatchCrash(with model:CrashModel) {
        print(model)
    }

}

