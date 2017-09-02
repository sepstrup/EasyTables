//
//  Sections.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 1/9/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

public class Sections {
    
    public var sections: [TableSection] = []
    
    public var count: Int {
        get {
            return sections.count
        }
    }
    
    public func section(at: Int) -> TableSection {
        return get(at: at)
    }
    
    public func at(index: Int) -> TableSection {
        return get(at: index)
    }
    
    public func get(at: Int) -> TableSection {
        return sections[at]
    }
    
    public func all() -> [TableSection] {
        return sections
    }
    
    public func add(section: TableSection) {
        sections.append(section)
    }
    
    public func add(section: TableSection, at: Int) {
        sections.insert(section, at: at)
    }
    
    public func remove(at: Int) {
        sections.remove(at: at)
    }
    
    public func remove(section: TableSection) {
        if let index = sections.index(of: section) {
            sections.remove(at: index)
        }
    }
    
    public func row(at: IndexPath) -> TableCellInfo {
        return self.at(index: at.section).row(at: at.row)
    }
    
}
