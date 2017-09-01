//
//  Sections.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 1/9/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import Foundation

class Sections {
    
    var sections: [TableSection] = []
    
    var count: Int {
        get {
            return sections.count
        }
    }
    
    func section(at: Int) -> TableSection {
        return get(at: at)
    }
    
    func at(index: Int) -> TableSection {
        return get(at: index)
    }
    
    func get(at: Int) -> TableSection {
        return sections[at]
    }
    
    func all() -> [TableSection] {
        return sections
    }
    
    func add(section: TableSection) {
        sections.append(section)
    }
    
    func add(section: TableSection, at: Int) {
        sections.insert(section, at: at)
    }
    
    func remove(at: Int) {
        sections.remove(at: at)
    }
    
    func remove(section: TableSection) {
        if let index = sections.index(of: section) {
            sections.remove(at: index)
        }
    }
    
    func row(at: IndexPath) -> TableCellInfo {
        return self.at(index: at.section).row(at: at.row)
    }
    
}
