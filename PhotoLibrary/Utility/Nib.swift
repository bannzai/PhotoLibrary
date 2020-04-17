//
//  Nib.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/17.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit

protocol Nib where Self: UIView {
    static var nibName: String { get }
    static func nib() -> UINib
}

extension Nib {
    static var nibName: String { className }
    static func nib() -> UINib {
        UINib(nibName: nibName, bundle: Bundle.init(for: self))
    }
}

extension UICollectionViewCell: Nib { }
