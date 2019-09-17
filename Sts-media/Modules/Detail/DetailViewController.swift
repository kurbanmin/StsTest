import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    var type: Type!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = type.title
        detailLabel.text = type.detail
    }
}
