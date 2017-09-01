//
//  TableSection.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 1/9/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

class TableSection: Equatable {
    
    var title: String?
    var rows: [TableCellInfo] = []
    
    var count: Int {
        get {
            return rows.count
        }
    }
    
    public static func ==(lhs: TableSection, rhs: TableSection) -> Bool {
        return lhs.uuid == rhs.uuid
    }
    
    private var uuid: String
    
    required init() {
        uuid = UUID().uuidString
    }
    
    required init(title: String) {
        self.title = title
        uuid = UUID().uuidString
    }
    
    required init(title: String, rows: [TableCellInfo]) {
        self.title = title
        self.rows = rows
        uuid = UUID().uuidString
    }
    
    func add(row: TableCellInfo) {
        rows.append(row)
    }
    
    func add(rows: [TableCellInfo]) {
        self.rows.append(contentsOf: rows)
    }
    
    func add(row: TableCellInfo, at: Int) {
        rows.insert(row, at: at)
    }
    
    func add(rows: [TableCellInfo], at: Int) {
        self.rows.insert(contentsOf: rows, at: at)
    }
    
    func row(at: Int) -> TableCellInfo {
        return rows[at]
    }
    
}
