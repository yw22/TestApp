//
//  ViewController.swift
//  ScreenTransitionExample
//
//  Created by 김영욱 on 2022/02/25.
//

import UIKit

class ViewController: UIViewController, SendDataDelegate {

  @IBOutlet weak var nameLabel: UILabel!
  override func viewDidLoad() {
    super.viewDidLoad()
    print("ViewControoler 뷰가 로드 되었다.")
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    print("Viewcontroller 뷰가 나타날 것이다.")
  }

  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    print("Viewcontroller 뷰가 나타낫다.")
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    print("Viewcontroller 뷰가 사라질 것이다.")
  }
  
  override func viewDidDisappear(_ animated: Bool) {
    super.viewDidDisappear(animated)
    print("Viewcontroller 뷰가 사라졌다.")
  }
  
  
  @IBAction func tapCodePushButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePushViewController") as? codePushViewController else { return }
    viewController.name = "Genter"
    self.navigationController?.pushViewController(viewController, animated: true)
  }
  
  @IBAction func tapCodePresentButton(_ sender: UIButton) {
    guard let viewController = self.storyboard?.instantiateViewController(identifier: "codePresentViewController") as? codePresentViewController else { return }
    
    viewController.modalPresentationStyle = .fullScreen
    viewController.name = "Genter"
    viewController.delegate = self
    self.present(viewController, animated: true, completion: nil)
    
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    if let viewController = segue.destination as? SeguePushViewController{
      viewController.name = "Genter"
    }
  }
  
  func sendData(name: String) {
    self.nameLabel.text = name
    self.nameLabel.sizeToFit()
  }
}

 
