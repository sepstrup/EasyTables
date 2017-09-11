//
//  TableSection.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 1/9/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

public class TableSection: Equatable {
    
    public var title: String?
    public var rows: [TableCellInfo] = []
    
    public var count: Int {
        get {
            return rows.count
        }
    }
    
    public static func ==(lhs: TableSection, rhs: TableSection) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    private var uuid: String
    
    public required init() {
        uuid = UUID().uuidString
    }
    
    public required init(title: String) {
        self.title = title
        uuid = UUID().uuidString
    }
    
    public required init(title: String, rows: [TableCellInfo]) {
        self.title = title
        self.rows = rows
        uuid = UUID().uuidString
    }
    
    public func add(row: TableCellInfo) {
        rows.append(row)
    }
    
    public func add(rows: [TableCellInfo]) {
        self.rows.append(contentsOf: rows)
    }
    
    public func addAsFirst(row: TableCellInfo) {
        self.add(row: row, at: 0)
    }
    
    public func add(row: TableCellInfo, at: Int) {
        rows.insert(row, at: at)
    }
    
    public func add(rows: [TableCellInfo], at: Int) {
        self.rows.insert(contentsOf: rows, at: at)
    }
    
    public func row(at: Int) -> TableCellInfo {
        return rows[at]
    }
    
}
