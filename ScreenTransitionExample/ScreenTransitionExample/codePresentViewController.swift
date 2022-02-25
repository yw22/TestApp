//
//  codePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class codePresentViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  @IBAction func tapBackButton(_ sender: UIButton) {
    self.presentingViewController?.dismiss(animated: true, completion: nil)
  }
}
