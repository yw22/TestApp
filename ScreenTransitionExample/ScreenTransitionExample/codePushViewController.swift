//
//  codePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class codePushViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  @IBAction func tapBackButton(_ sender: UIButton) {
    self.navigationController?.popViewController(animated: true)
  }
  
}
