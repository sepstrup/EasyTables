///**
/**
 * EasyTables
 * Created by: Peter Sepstrup on 30/8/17
 *
 * License: MIT
 */

import Foundation

public extension Array where Element: TableCellInfo {
    
    public mutating func append(identifier: String) {
        append(Element.init(identifier: identifier))
    }
    
    public mutating func append(identifier: String, data: TableCellData) {
        append(Element.init(identifier: identifier, data: data))
    }
    
}
