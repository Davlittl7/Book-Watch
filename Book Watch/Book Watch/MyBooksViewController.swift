//
//  MyBooksViewController.swift
//  Book Watch
//
//  Created by Guest User on 5/2/23.
//

import UIKit

class MyBooksViewController: UIViewController, UITableViewDelegate {

    @IBOutlet weak var MyBooksTableView: UITableView!
    var accountBooksArr: [String] = []
    
    let userDefaults = UserDefaults.standard
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        MyBooksTableView.delegate = self
        MyBooksTableView.dataSource = self
        //userDefaults.set(accountBooksArr, forKey: "accountBooksArr")
        accountBooksArr = userDefaults.array(forKey: "accountBooksArr") as? [String] ?? [String]()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        MyBooksTableView.reloadData()
        
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

extension MyBooksViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //return accountBooksArr.count;
        return userDefaults.array(forKey: "accountBooksArr")?.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "AccountBookTableViewCell", for: indexPath) as! AccountBookTableViewCell
    
        /*
        cell.accountBookInfoLabel?.text = accountBooksArr[indexPath.row]
        */
        
        cell.accountBookInfoLabel?.text = userDefaults.array(forKey: "accountBooksArr")?[indexPath.row] as? String
        
        return cell
    }
    
    
}
