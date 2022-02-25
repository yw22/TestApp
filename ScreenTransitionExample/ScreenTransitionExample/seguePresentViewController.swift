//
//  seguePresentViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class seguePresentViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  @IBAction func tapBackbutton(_ sender: UIButton) {
    self.presentingViewController?
      .dismiss(animated: true, completion:  nil)
  }
  
}
