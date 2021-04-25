//
//  CategorySelectorViewController.swift
//  SwiftSugar
//
//  Created by sundong on 2021/4/23.
//  Copyright © 2021 MAC. All rights reserved.
//

import UIKit

class CategorySelectorViewController: UIViewController {

    private lazy var headCollectionView: UICollectionView = {
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CategorySelectorHeadCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: CategorySelectorHeadCollectionViewCell.self))
        return collectionView
    }()
    
    private lazy var contentCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(CategorySelectorContentCollectionViewCell.self, forCellWithReuseIdentifier: String(describing: CategorySelectorContentCollectionViewCell.self))
        return collectionView
    }()
    
    // MARK: - config
    
    var headItemSize = CGSize(width: 40, height: 40)
    var contentItemSize = CGSize(width: 40, height: 40)
    var headIconArray = [UIImage]()
    var contentIconArray = [[UIImage]]()
    
    // MARK: - init
    convenience init() {
        
    }
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
}

extension CategorySelectorViewController: UICollectionViewDelegate {
    
}

extension CategorySelectorViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == headCollectionView {
            return 1
        } else {
            return contentIconArray.count
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == headCollectionView {
            <#statements#>
        } else {
            <#statements#>
        }
    }
    
    
}
extension CategorySelectorViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == headCollectionView {
            <#statements#>
        } else {
            <#statements#>
        }
    }
}
