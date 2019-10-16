

import UIKit

class DeathNoteTableViewCell: UITableViewCell {
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var note: (String, String, String)? {
        didSet {
            if let n = note {
                nameLabel?.text = n.0
                dateLabel?.text = n.1
                descriptionLabel?.text = n.2
//                descriptionLabel?.numberOfLines = 0
            }
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
