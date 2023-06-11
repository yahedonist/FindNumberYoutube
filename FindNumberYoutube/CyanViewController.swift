//
//  CyanViewController.swift
//  FindNumberYoutube
//
//  Created by Nikita on 08.06.2023.
//

import UIKit

class CyanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

  @IBAction func goToRoot(_ sender: UIButton) {
    self.navigationController?.popToRootViewController(animated: true)
    
    
  }
  @IBAction func goToOrange(_ sender: UIButton) {
    if let viewControllers = self.navigationController?.viewControllers{
      
      for vc in viewControllers{
        if vc is OrangeViewController{
          self.navigationController?.popToViewController(vc, animated: true)
        }
      }
    }
  }
  
}
