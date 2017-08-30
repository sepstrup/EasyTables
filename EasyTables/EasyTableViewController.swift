//
//  EasyTableViewController.swift
//  EasyTables
//
//  Created by Peter Sepstrup on 30/8/17.
//  Copyright © 2017 powerLABS. All rights reserved.
//

import UIKit

class EasyTableViewController: UITableViewController {

    var sections: [[TableCellInfo]] = []
    
    func addRowsBelow(indexPath: IndexPath, data: [TableCellInfo]) {
        print("add below")
        sections[indexPath.section].insert(contentsOf: data, at: indexPath.row+1)
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
    
    func removeRowsBelow(indexPath: IndexPath, numberOfRows: Int) {
        var delRows: [IndexPath] = []
        for i in 1...numberOfRows {
            sections[indexPath.section].remove(at: indexPath.row+1)
            delRows.append(IndexPath(row: indexPath.row+i, section: indexPath.section))
        }
        tableView.beginUpdates()
        tableView.deleteRows(at: delRows, with: .fade)
        tableView.endUpdates()
    }
    
    func removeRowsAbove(indexPath: IndexPath, numberOfRows: Int, includeSender: Bool = false) {
        var delRows: [IndexPath] = []
        let delSender: Int = includeSender ? 0 : 1
        for i in delSender...(numberOfRows-1) {
            print(i.description)
            sections[indexPath.section].remove(at: indexPath.row-i)
            delRows.append(IndexPath(row: indexPath.row-i, section: indexPath.section))
        }
        tableView.beginUpdates()
        tableView.deleteRows(at: delRows, with: .fade)
        tableView.endUpdates()
        
    }

}
