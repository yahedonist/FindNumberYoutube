//
//  OrangeViewController.swift
//  FindNumberYoutube
//
//  Created by Nikita on 08.06.2023.
//

import UIKit

class OrangeViewController: UIViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      print(" OrangeViewController viewDidLoad")

    }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print(" OrangeViewController viewWillAppear")
    
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print(" OrangeViewController viewDidAppear")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print(" OrangeViewController viewWillDisappear")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print(" OrangeViewController viewDidDisappear")
  }
  
  deinit{
    print(" OrangeViewController deinit")
  }
  
  @IBAction func goToGreenController(_ sender: UIButton) {
    performSegue(withIdentifier: "goToGreen", sender: "Text String")
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    switch segue.identifier {
    case "goToGreen":
      if let greenVC = segue.destination as? GreenViewController{
        if let string = sender as? String{
          greenVC.textForLabel = "Test String"
        }
      }
    default:
      break
    }
  }
  
}
