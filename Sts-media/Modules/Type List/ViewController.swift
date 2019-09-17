import UIKit

class ViewController: UIViewController, DataSourceOutput {
    
    var dataSource: DataSource!
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = DataSource(tableView: tableView)
        dataSource.delegate = self
    }
    
    func showDetail(with type: Type) {
        let detailVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        detailVC.type = type
        navigationController?.pushViewController(detailVC, animated: true)
        
        // При необходимости показывать разные детальные экраны для разных типов
//        switch type.objectType {
//        case .notice:
//            let notice = type as! Notice
//        case .event:
//            let event = type as! Event
//        case .move:
//            let move = type as! Move
//        }
    }
}
