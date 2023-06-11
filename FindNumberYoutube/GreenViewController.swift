//
//  GreenViewController.swift
//  FindNumberYoutube
//
//  Created by Nikita on 08.06.2023.
//

import UIKit

class GreenViewController: UIViewController {
  
  @IBOutlet weak var testLabel: UILabel!
  var textForLabel = ""
  override func viewDidLoad() {
    super.viewDidLoad()
    
    testLabel.text = textForLabel
  }
  @IBAction func goToCyanController(_ sender: UIBarButtonItem) {
    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    let vc = storyboard.instantiateViewController(withIdentifier: "cyanVC")
    vc.title = "Green"
    self.navigationController?.pushViewController(vc, animated: true)
  }
  
  
}
