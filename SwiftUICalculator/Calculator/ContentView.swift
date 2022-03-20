//
//  ContentView.swift
//  Calculator
//
//  Created by 김영욱 on 2022/03/04.
//

import SwiftUI
import Foundation

enum CalcButton: String {
  case one = "1"
  case two = "2"
  case three = "3"
  case four = "4"
  case five = "5"
  case six = "6"
  case seven = "7"
  case eight = "8"
  case nine = "9"
  case zero = "0"
  case add = "+"
  case subtract = "-"
  case divide = "/"
  case mutiply = "X"
  case equal = "="
  case clear = "AC"
  case decimal = "."
  case percent = "%"
  case negative = "-/+"
  
  var buttonColor: Color {
    switch self {
    case .add, .subtract, .mutiply, .divide, .equal:
      return .orange
    case .clear, .negative, .percent:
      return Color(.lightGray)
    default:
      return Color(UIColor(red: 55/255.0, green: 55/255.0, blue: 55/255.0, alpha: 1))
    }
  }
}

enum Operation {
  case add, subtract, multiply, divide, none
}

struct ContentView: View {
  
  @State var value = "0"
  @State var valueNumber : Double = 0
  @State var runningNumber = 0.0
  @State var currentOperation: Operation = .none
  @State var flag = false
  @State var runningValue = 0.0
  @State var currentValue = 0.0
  
  
  let buttons: [[CalcButton]] = [
    [.clear, .negative, .percent, .divide],
    [.seven, .eight, .nine, .mutiply],
    [.four, .five, .six, .subtract],
    [.one, .two, .three, .add],
    [.zero, .decimal, .equal]
  ]
  
  var body: some View {
    ZStack {
      Color.black.edgesIgnoringSafeArea(.all)
      
      VStack{
        Spacer()
        
        // Text display
        HStack{
          Spacer()
          Text(value)
            .bold()
            .font(.system(size: 72))
            .foregroundColor(.white)
        }
        .padding()
        
        // Our buttons
        ForEach(buttons, id: \.self) { row in
          HStack (spacing: 12){
            ForEach(row, id: \.self) {item in
              Button(action:  {
                self.didTap(button: item)
              }, label: {
                Text(item.rawValue)
                  .font(.system(size: 32))
                  .frame(
                    width: self.buttonWidth(item: item),
                    height: self.buttonheight()
                  )
                  .background(item.buttonColor)
                  .foregroundColor(.white)
                  .cornerRadius(self.buttonWidth(item: item)/2)
              })
            }
          }
          .padding(.bottom, 3)
          
        }
      }
    }
  }
  
  func didTap(button: CalcButton) {
    switch button{
    case .add, .subtract, .mutiply, .divide, .equal:
      if button == .add {
        self.currentOperation = .add
        self.runningNumber = Double(self.value) ?? 0
        flag = true
      }
      else if button == .subtract {
        self.currentOperation = .subtract
        self.runningNumber = Double(self.value) ?? 0
        flag = true
      }
      else if button == .mutiply {
        self.currentOperation = .multiply
        self.runningNumber = Double(self.value) ?? 0
        flag = true
      }
      else if button == .divide {
        self.currentOperation = .divide
        self.runningNumber = Double(self.value) ?? 0
        flag = true
      }
      else if button == .equal {
        if self.runningValue == 0 {
          self.runningValue = Double(self.runningNumber)
        }
        if self.currentValue == 0 {
          self.currentValue = Double(self.value) ?? 0
        }
        switch self.currentOperation {
        case .add:
          let result = runningValue + currentValue
          isDot(num: result)
        case .subtract:
          let result = runningValue - currentValue
          isDot(num: result)
        case .multiply:
          let result = runningValue * currentValue
          isDot(num: result)
        case .divide:
          let result = runningValue / currentValue
          isDot(num: result)
        case .none:
          break
        }
        self.runningValue = Double(self.value) ?? 0
      }
    case .clear:
      self.value = "0"
      self.runningNumber = 0
      self.runningValue = 0
      self.currentValue = 0
      
    case .decimal, .negative, .percent:
      if button == .decimal {
        if self.value.contains(".") == true {
          break
        } else {
          self.value = "\(self.value)."
        }
      } else if button == .negative {
        self.valueNumber = Double(self.value) ?? 0
        self.valueNumber = self.valueNumber * -1
        if self.value.contains(".") == true {
          self.value = String(self.valueNumber)
        } else {
          self.value = String(Int(self.valueNumber))
        }
      } else {
        self.value = "\((Double(self.value) ?? 0) / 100)"
      }
      
    default:
      let number = button.rawValue
      if !flag {
        if self.value == "0" {
          value = number
        } else {
          self.value = "\(self.value)\(number)"
        }
      } else {
        value = number
        flag = !flag
      }
    }
  }
  
  func buttonWidth(item: CalcButton) -> CGFloat {
    if item == .zero {
      return ((UIScreen.main.bounds.width - (4 * 12)) / 4) * 2
    }
    return (UIScreen.main.bounds.width - (5 * 12)) / 4
  }
  
  func buttonheight() -> CGFloat {
    return (UIScreen.main.bounds.width - (5 * 12)) / 4
  }
  
  // 실수가 아니면 정수형으로 표기
  func isDot(num : Double){
    let dotSixRange : Double = pow(10, 6)
    if num == floor(num){
      self.value = "\(Int(num))"
    } else {
      // 소수점 6자리까지 표현
      self.value = "\(floor(num * dotSixRange) / dotSixRange)"
    }
  }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

