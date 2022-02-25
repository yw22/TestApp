//
//  SeguePushViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class SeguePushViewController: UIViewController {
  
  @IBOutlet weak var nameLabel: UILabel!
  var name: String?
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    print("SeguePushViewController 뷰가 로드 되었다.")
    if let name = name {
      self.nameLabel.text = name
      self.nameLabel.sizeToFit()
    }
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("SeguePushViewController 뷰가 나타날 것이다.")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("SeguePushViewController 뷰가 나타낫다.")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("SeguePushViewController 뷰가 사라질 것이다.")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("SeguePushViewController 뷰가 사라졌다.")
  }

  
  @IBAction func tapBackButton(_ sender: UIButton) {
    self.navigationController?
      .popViewController(animated: true)
    //    self.navigationController?
    //      .popToRootViewController(animated: true) -> 이전 화면이 아닌 처음 화면으로 돌아가고싶은 때
  }
}
