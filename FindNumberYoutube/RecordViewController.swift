//
//  RecordViewController.swift
//  FindNumberYoutube
//
//  Created by Nikita on 11.06.2023.
//

import UIKit

class RecordViewController: UIViewController {
  
  @IBOutlet weak var recordLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let record = UserDefaults.standard.integer(forKey: KeysUserDefaults.recordGame)
    
    if record != 0 {
      recordLabel.text = "Your record - \(record)"
    } else {
      recordLabel.text = "No record( "
    }
  }
  @IBAction func closeVC(_ sender: UIBarButtonItem) {
    dismiss(animated: true, completion: nil)
  }
  
}
