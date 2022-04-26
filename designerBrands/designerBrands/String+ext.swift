//
//  String+ext.swift
//  designerBrands
//
//  Created by Developer on 4/26/22.
//

import Foundation

extension Substring {
    func toInt() -> Int {
        Int(self) ?? -1
    }
    func toFloat() -> Float {
        Float(self) ?? -1
    }
    func toBool() -> Bool {
        self == "true"
    }
}
