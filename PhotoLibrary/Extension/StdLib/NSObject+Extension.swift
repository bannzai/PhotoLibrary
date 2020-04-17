//
//  NSObject+Extension.swift
//  PhotoLibrary
//
//  Created by Yudai.Hirose on 2020/04/17.
//  Copyright © 2020 bannzai. All rights reserved.
//

import Foundation

extension NSObject {
    static var className: String {
        return String(describing: self)
    }
}
