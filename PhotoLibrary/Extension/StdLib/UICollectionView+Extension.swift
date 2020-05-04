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
    func dequeueReusableCell<T: CollectionViewCellType>(type: T.Type, indexPath: IndexPath) -> T {
        dequeueReusableCell(withReuseIdentifier: type.identifier, for: indexPath) as! T
    }
}
