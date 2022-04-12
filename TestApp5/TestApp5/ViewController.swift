//
//  ViewController.swift
//  TestApp5
//
//  Created by 김영욱 on 2022/04/11.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var upDownLabel: UILabel!
  @IBOutlet weak var userSelectNumberLabel: UILabel!
  
  var comNumber = Int.random(in: 1...100)
  var userNumberStirng: String = ""
  
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    upDownLabel.text = "선택하세요"
    userSelectNumberLabel.text = ""
  }
  

  @IBAction func numbersButtonTapped(_ sender: UIButton) {
    
    // 버튼의 있는값 가져오기
    guard let selectNum = sender.currentTitle else { return }
    
    // 숫자가 3자리 이상 가지 않게 만들기
    guard userNumberStirng.count != 3 else { return }
    
    
    // 버튼을 누른 숫자를 userNumberStirng으로 만들기
    switch selectNum {
    case "0":
      if userNumberStirng == "" { break }
      userNumberStirng += "0"
    case "1":
      userNumberStirng += "1"
    case "2":
      userNumberStirng += "2"
    case "3":
      userNumberStirng += "3"
    case "4":
      userNumberStirng += "4"
    case "5":
      userNumberStirng += "5"
    case "6":
      userNumberStirng += "6"
    case "7":
      userNumberStirng += "7"
    case "8":
      userNumberStirng += "8"
    case "9":
      userNumberStirng += "9"
    default:
      break
    }
    
    // userSelectNumberLabel에 선택
    userSelectNumberLabel.text = userNumberStirng
    
    
  }
  
  
  @IBAction func resetButtonTapped(_ sender: UIButton) {
    viewDidLoad()
    comNumber = Int.random(in: 1...100)
    userNumberStirng = ""
  
  }
  
  
  @IBAction func selectButtonTapped(_ sender: UIButton) {
    // 0) userNumberStirng을 userNumber에 대입
    guard let userNumber =  Int(userNumberStirng) else { return }

    // 1) userNumber와 comNumber와 비교하여 upDownLabel에 표시
    if userNumber > comNumber{
      upDownLabel.text = "Down"
    } else if userNumber < comNumber {
      upDownLabel.text = "Up"
    } else {
      upDownLabel.text = "Bingo😀"
    }
    
    // 2) userSelectNumberLabel에 userNumber를 대입
    userSelectNumberLabel.text = userNumberStirng
    
    // 3) userNumberStirng 초기화
    userNumberStirng = ""
    
  }
  
  
  

}

