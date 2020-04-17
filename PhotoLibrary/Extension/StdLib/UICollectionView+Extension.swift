//
//  UICollectionView+Extension.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/17.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit

extension UICollectionView {
    func registerCell<T: CollectionViewCellType>(type: T.Type) {
        register(type.nib(), forCellWithReuseIdentifier: type.identifier)
    }
}
