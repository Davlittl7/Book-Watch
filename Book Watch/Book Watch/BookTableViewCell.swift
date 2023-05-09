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
    
    @IBOutlet weak var homeBookImg: UIImageView!
    @IBOutlet weak var homeAddBookBtn: UIButton!
    var isUnique: Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func HomeAddBookBtnClicked(_ sender: UIButton) {
        isUnique = true;
        
        for i in HomeScreenViewController.myBooksVC!.accountBooksArr.indices {
            if(homeBookInfoLabel.text == HomeScreenViewController.myBooksVC?.accountBooksArr[i]) {
                isUnique = false
            }
        }
        
        if(isUnique) {
            HomeScreenViewController.myBooksVC?.accountBooksArr.append(homeBookInfoLabel.text ?? "")
            HomeScreenViewController.myBooksVC?.userDefaults.set(HomeScreenViewController.myBooksVC?.accountBooksArr, forKey: "accountBooksArr")
            print("Book Added!")
        }
    }
}
