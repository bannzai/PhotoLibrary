//
//  UIView+Extension.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/16.
//  Copyright © 2020 bannzai. All rights reserved.
//

import UIKit

extension UIView {
    final func expand(to view: UIView, inset: UIEdgeInsets = .zero) {
        NSLayoutConstraint.activate([
            topAnchor.constraint(equalTo: view.topAnchor, constant: inset.top),
            bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: inset.bottom),
            leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: inset.left),
            trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: inset.right),
        ])
    }
    
    final func expandToSuperview(edge: CGFloat) {
        expandToSuperview(inset: UIEdgeInsets(top: edge, left: edge, bottom: edge, right: edge))
    }
    
    final func expandToSuperview() {
        expandToSuperview(inset: .zero)
    }
    
    final func expandToSuperview(inset: UIEdgeInsets) {
        guard let superview = superview else {
            assertionFailure("superview is not exists")
            return
        }
        
        expand(to: superview, inset: inset)
    }
    
    final func enableAutoLayout() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
