///**
/**
 * EasyTables
 * Created by: Peter Sepstrup on 30/8/17
 *
 * License: MIT
 */

import UIKit

open class EasyTableViewController: UITableViewController {

    public var table = EasyTable()
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        loadDataSource()
    }
    
    override open func numberOfSections(in tableView: UITableView) -> Int {
        return table.count
    }
    
    override open func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table.at(index: section).count
    }
    
    override open func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return table.at(index: section).title
    }
    
    open func loadDataSource() {
        table = EasyTable(tableView: self.tableView)
    }
    
}
