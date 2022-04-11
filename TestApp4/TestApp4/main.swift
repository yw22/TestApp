//
//  main.swift
//  TestApp4
//
//  Created by 김영욱 on 2022/04/11.
//

import Foundation

var computerChoice = Int.random(in: 1...100)

var myChoice : Int = 0

while true {
  
  let userInput = readLine()
  
  if let input = userInput {
    if let number = Int(input) {
      myChoice = number
    }
  }
  
  if computerChoice > myChoice {
    print("Up")
  } else if computerChoice < myChoice {
    print("Down")
  } else {
    print("Bingo")
    break
  }
}
