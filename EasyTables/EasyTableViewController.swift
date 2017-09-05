//
//  EasyTableViewController.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 30/8/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import UIKit

open class EasyTableViewController: UITableViewController {

    public var sections = Sections()
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sections.at(index: section).count
    }
    
    override open func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections.at(index: section).title
    }
    
    public func addRowsBelow(indexPath: IndexPath, data: [TableCellInfo]) {
        let section = sections.at(index: indexPath.section)
        section.rows.insert(contentsOf: data, at: indexPath.row+1)
        var newRows: [IndexPath] = []
        var newCount = 1
        for _ in data {
            newRows.append(IndexPath(row: indexPath.row+newCount, section: indexPath.section))
            newCount = newCount+1
        }
        tableView.beginUpdates()
        tableView.insertRows(at: newRows, with: .fade)
        tableView.endUpdates()
    }
    
    public func removeRowsBelow(indexPath: IndexPath, numberOfRows: Int) {
        var delRows: [IndexPath] = []
        let section = sections.at(index: indexPath.section)
        for i in 1...numberOfRows {
            section.rows.remove(at: indexPath.row+1)
            delRows.append(IndexPath(row: indexPath.row+i, section: indexPath.section))
        }
        tableView.beginUpdates()
        tableView.deleteRows(at: delRows, with: .fade)
        tableView.endUpdates()
    }
    
    public func removeRowsAbove(indexPath: IndexPath, numberOfRows: Int, includeSender: Bool = false) {
        var delRows: [IndexPath] = []
        let section = sections.at(index: indexPath.section)
        let delSender: Int = includeSender ? 0 : 1
        for i in delSender...(numberOfRows-1) {
            section.rows.remove(at: indexPath.row-i)
            delRows.append(IndexPath(row: indexPath.row-i, section: indexPath.section))
        }
        tableView.beginUpdates()
        tableView.deleteRows(at: delRows, with: .fade)
        tableView.endUpdates()
        
    }

}
