import UIKit

class Cell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    func setup(type: Type) {
        titleLabel.text = type.title
        detailLabel.text = type.detail
    }
}
