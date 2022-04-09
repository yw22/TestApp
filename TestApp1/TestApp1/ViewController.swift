//
//  ViewController.swift
//  TestApp1
//
//  Created by 김영욱 on 2022/04/09.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var mainLable: UILabel!
  @IBOutlet weak var myButton: UIButton!
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    myButton.backgroundColor = #colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)
    myButton.setTitleColor(#colorLiteral(red: 0.2725490451, green: 0.2341234, blue: 0.2313725501, alpha: 1), for: .normal)
    
  }


  @IBAction func buttonPressed(_ sender: UIButton) {
    guard mainLable.text != "안녕하세요" else { return mainLable.text = "반갑습니다"}
    mainLable.text = "안녕하세요"
    mainLable.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    mainLable.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    
    
  }
  
  
}

