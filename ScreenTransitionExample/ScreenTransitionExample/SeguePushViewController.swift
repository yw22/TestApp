//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class SeguePushViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
  @IBAction func tapBackButton(_ sender: UIButton) {
    self.navigationController?
      .popViewController(animated: true)
//    self.navigationController?
//      .popToRootViewController(animated: true) -> 이전 화면이 아닌 처음 화면으로 돌아가고싶은 때
  }
}
