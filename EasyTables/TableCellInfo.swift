///**
/**
 * EasyTables
 * Created by: Peter Sepstrup on 26/6/17
 *
 * License: MIT
 */

import Foundation

public class TableCellInfo: Equatable {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func ==(lhs: TableCellInfo, rhs: TableCellInfo) -> Bool {
        return lhs.uuid == rhs.uuid
    }

    public var identifier: String
    public var data: TableCellData?
    private var uuid: String
    
    public required init(identifier: String) {
        self.identifier = identifier
        uuid = UUID().uuidString
    }
    
    public required init(identifier: String, data: TableCellData) {
        self.identifier = identifier
        self.data = data
        uuid = UUID().uuidString
    }
    
    
}
