//
//  Reusable.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/17.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit

protocol Reusable {
    static var identifier: String { get }
}

extension Reusable where Self: UICollectionViewCell {
    static var identifier: String { className }
}
