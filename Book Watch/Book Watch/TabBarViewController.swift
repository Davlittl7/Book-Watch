//
//  TabBarViewController.swift
//  Book Watch
//
//  Created by Guest User on 5/2/23.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipe.numberOfTouchesRequired = 1
        swipe.direction = .left
        self.view.addGestureRecognizer(swipe)
        
        let swipeTwo = UISwipeGestureRecognizer(target: self, action: #selector(swipeGesture))
        swipeTwo.numberOfTouchesRequired = 1
        swipeTwo.direction = .right
        self.view.addGestureRecognizer(swipeTwo)
    }
    
    @objc private func swipeGesture(swipe: UISwipeGestureRecognizer)  {
        switch swipe.direction {
        case .left:
            if selectedIndex < 2 {
                self.selectedIndex = selectedIndex + 1
            }
            break
        case .right:
            if selectedIndex > 0 {
                self.selectedIndex = selectedIndex - 1
            }
            break
        default:
            break
        }
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
