//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func tapCodePushButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePushViewController") else { return }
    self.navigationController?.pushViewController(viewController, animated: true)
  }
  
  @IBAction func tapCodePresentButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePresentViewController") else { return }
    viewController.modalPresentationStyle = .fullScreen
    self.present(viewController, animated: true, completion: nil)
    
  }
}

