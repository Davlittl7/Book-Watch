//
//  AccountBookTableViewCell.swift
//  Book Watch
//
//  Created by Guest User on 5/3/23.
//

import UIKit

class AccountBookTableViewCell: UITableViewCell {

    @IBOutlet weak var finishBookBtn: UIButton!
    @IBOutlet weak var accountBookInfoLabel: UILabel!
    @IBOutlet weak var accountImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func finishBookBtnClicked(_ sender: UIButton) {
        
        if let index = HomeScreenViewController.myBooksVC?.accountBooksArr.firstIndex(of: accountBookInfoLabel.text!) {
            HomeScreenViewController.myBooksVC?.accountBooksArr.remove(at: index)
            HomeScreenViewController.myBooksVC?.userDefaults.set(HomeScreenViewController.myBooksVC?.accountBooksArr, forKey: "accountBooksArr")
            HomeScreenViewController.myBooksVC?.MyBooksTableView.reloadData()
            print("Book removed from account!")
        }
    }
}
