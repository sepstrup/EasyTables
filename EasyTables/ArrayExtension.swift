//
//  ArrayExtension.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 30/8/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

extension Array where Element: TableCellInfo {
    
    mutating func append(identifier: String) {
        append(Element.init(identifier: identifier))
    }
    
    mutating func append(identifier: String, data: TableCellData) {
        append(Element.init(identifier: identifier, data: data))
    }
    
}
