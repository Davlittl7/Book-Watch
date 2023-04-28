//
//  BookTableViewCell.swift
//  Book Watch
//
//  Created by Guest User on 4/28/23.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var homeBookView: UIView!
    @IBOutlet weak var homeBookInfoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
