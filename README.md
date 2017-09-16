# README #

EasyTables
Demo project: https://github.com/sepstrup/EasyTablesDemo/

Cocoapod:
pod 'EasyTables', :git => 'https://github.com/sepstrup/EasyTables.git'

### What is this repository for? ###

* Adding and removing rows and sections in tables is now easy!

### How do I get set up? ###

* Optional: Extend from EasyTableViewController when working with table views
* - or implement count and header titels your self

```
class TableViewController: EasyTableViewController {
...
```

* Use the build in methods to easy update your view

```
override func viewDidLoad() {
        super.viewDidLoad()
        // add 2 sections with 3 rows each
        for i in 0...1 {
            let section = TableSection(title: "Section \(i)")
            for x in 0...2 {
                section.add(row: TableCellInfo(identifier: "Row \(x)"))
            }
            table.add(section: section)
        }
        
        //add a section with one row "Show more", we will use this later
        let section = TableSection()
        section.add(row: TableCellInfo(identifier: "Show more"))
        table.add(section: section)
    }
```
* Conform to TableCellData for the data to your rows and cast from it in your rendering
```
class CellData: TableCellData { 
    var subTitle: String?   
}
```
Cast it when you render your view
```
 case "Special Row":
            // get data from our CellData, conforms to protocol TableCellData
            guard let data = table.row(at: indexPath).data as? CellData else { break }
            cell = tableView.dequeueReusableCell(withIdentifier: "subtitle", for: indexPath)
            // special class for our special cell (nothing special... :-)
            guard let specialCell = cell as? SpecialTableViewCell else { break }
            specialCell.textLabel?.text = table.row(at: indexPath).identifier
            specialCell.detailTextLabel?.text = data.subTitle
```
### Contribution guidelines ###

* Feel free to submit change suggestions

### Who do I talk to? ###

* Peter Sepstrup
* Create an issue
