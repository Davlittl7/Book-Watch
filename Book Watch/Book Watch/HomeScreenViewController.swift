//
//  HomeScreenViewController.swift
//  Book Watch
//
//  Created by Guest User on 4/27/23.
//

import UIKit
import SwiftUI

class HomeScreenViewController: UIViewController, UITableViewDelegate {
    static var myBooksVC: MyBooksViewController?
    let data = DataLoader().bookData
    @IBOutlet weak var HomeBookTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        HomeBookTableView.delegate = self
        HomeBookTableView.dataSource = self
        
        HomeScreenViewController.myBooksVC = self.tabBarController!.viewControllers![1] as? MyBooksViewController
    }

   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension HomeScreenViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as! BookTableViewCell
        
        
        
        cell.homeBookInfoLabel.text = "\(data[indexPath.row].title), \(data[indexPath.row].author)"
        

        
        return cell
    }
    
    
}
