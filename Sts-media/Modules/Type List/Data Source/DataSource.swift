import UIKit

protocol DataSourceOutput: class {
    func showDetail(with type: Type)
}

class DataSource: NSObject {
    var types: [Type] = Genarator().generateData()
    var tableView: UITableView!
    
    weak var delegate: DataSourceOutput!
    
    init(tableView: UITableView) {
        self.tableView = tableView
        super.init()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "Cell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
}

extension DataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return types.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let type = types[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! Cell
        
        cell.setup(type: type)
        
        return cell
    }
}

extension DataSource: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let type = types[indexPath.row]
        delegate.showDetail(with: type)
    }
}
