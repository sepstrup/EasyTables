//
//  ArrayExtension.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 30/8/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

public extension Array where Element: TableCellInfo {
    
    public mutating func append(identifier: String) {
        append(Element.init(identifier: identifier))
    }
    
    public mutating func append(identifier: String, data: TableCellData) {
        append(Element.init(identifier: identifier, data: data))
    }
    
}
