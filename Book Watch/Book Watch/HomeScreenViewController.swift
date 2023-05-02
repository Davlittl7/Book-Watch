//
//  HomeScreenViewController.swift
//  Book Watch
//
//  Created by Guest User on 4/27/23.
//

import UIKit

class HomeScreenViewController: UIViewController, UITableViewDelegate {
    let data = DataLoader().bookData
    @IBOutlet weak var HomeBookTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        HomeBookTableView.delegate = self
        HomeBookTableView.dataSource = self
        registerTableCells()
    
    }
    
    func registerTableCells() {
        HomeBookTableView.register(UINib(nibName: "BookTableViewCell", bundle: nil), forCellReuseIdentifier: "BookTableViewCell")
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
        /*
        let cell = UITableViewCell()
        
        cell.textLabel?.text = "\(data[indexPath.row].title), \(data[indexPath.row].author), \(data[indexPath.row].pages)"
         */
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "BookTableViewCell", for: indexPath) as! BookTableViewCell
        
        
        
        cell.homeBookInfoLabel.text = "\(data[indexPath.row].title), \(data[indexPath.row].author), \(data[indexPath.row].pages)"
        
        return cell
    }
    
    
}
