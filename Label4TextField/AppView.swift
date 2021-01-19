//
//  AppView.swift
//  Label4TextField
//
//  Created by Iurie Guzun on 2021-01-18.
//  Copyright © 2021 Iurie Guzun. All rights reserved.
//

import SwiftUI

var    currentValue = ""
var    currentXValue = ""
var    currentYValue = ""
var    currentLabel = ""
var    minusSymbol = "-"
var    cursorSymbol = "_"
var    xValue = "X = "
var    yValue = "Y = "
var    blinkStatus = false
var    labelXText = xValue
var    labelYText = yValue

func insertSymbol (inputString: String) {
    currentToXY()
    currentValue.append(inputString)
    xYToCurrent()
    print(currentValue)
}

func xYToCurrent() {
    if currentLabel == xValue {
        currentXValue = currentValue
        labelXText = xValue + currentXValue
    } else if currentLabel == yValue  {
        currentYValue = currentValue
        labelYText = yValue + currentYValue
    }
}
 
func currentToXY() {
    if currentLabel == xValue {
        currentValue = currentXValue
    } else if currentLabel == yValue {
        currentValue = currentYValue
    }
}
class LabelSettings: ObservableObject {
    @Published var labelXText = "X = "
    @Published var labelYText = "Y = "
}

struct AppView: View {
// @State private var labelXText = xValue
    //    @available(iOS 13.0.0, *)
    var body: some View {
      
        print("AppView Accessed!")
        return
            HStack(alignment: .center) {
                LabelsView()
                    .font(.body)
                    .padding(5  )
                    .foregroundColor(Color.black)
                Spacer()
                ButonsView()
            }.padding(5)
    }
    
}

struct LabelsView: View {
    @State private var myAnimation = true

    @ObservedObject  var labelSettings = LabelSettings()
    
    let timer = Timer.publish(every: 0.2, on: .main, in: .common).autoconnect()

    func blink() {
        print("Blink Accessed!!!", blinkStatus)

        if blinkStatus == false {
            if currentLabel == xValue {
                labelSettings.labelXText = xValue+currentXValue+cursorSymbol
            } else if currentLabel == yValue {
                labelSettings.labelYText = yValue+currentYValue+cursorSymbol
            }
            blinkStatus = true
            print(labelSettings.labelXText, " and ", labelSettings.labelYText)
        } else {
            labelSettings.labelXText = xValue+currentXValue
            labelSettings.labelYText = yValue+currentYValue
            blinkStatus = false
        }
    }
    var body: some View {
        return VStack(alignment: .leading) {
            Text(labelSettings.labelXText)
                .padding(5)
                .onTapGesture {
                    print("X= is current")
                    currentLabel = xValue
            }

            Text(labelSettings.labelYText)
                   .padding(5)
                   .onTapGesture {
                    print("Y= is current")
                    currentLabel = yValue
                   }
            .onReceive(timer) {_ in
                    self.blink()
            }

            
            
        }.padding(5)
    }
}
struct ButonsView: View {
    var body: some View {
        VStack(alignment: .center) {
            HStack {
                Button(action: {
                    print("- Button taped!")
                    insertSymbol(inputString: "-")
                })
                {Text ("-")
                    .modifier(ButtonShape())                }
                Button(action: {
                    print("0 Button taped!")
                    insertSymbol(inputString: "0")
                })
                {Text ("0")
                    .modifier(ButtonShape())                }
                Button(action: {
                    print("1 Button taped!")
                     insertSymbol(inputString: "1")
                })
                {Text ("1")
                    .modifier(ButtonShape())                }
                Button(action: {
                    print("BS Button taped!")
                    currentToXY()
                    if currentValue.count>0 {
                        currentValue.removeLast()
                        print(currentValue)
                    }
                    xYToCurrent()
                })
                {Text ("BS")
                    .modifier(ButtonShape())
                }
            }
            HStack {
                Button(action: {
                    print("2 Button taped!")
                    insertSymbol(inputString: "2")
                })
                {Text ("2")
                    .modifier(ButtonShape())                }
                Button(action: {
                    print("3 Button taped!")
                    insertSymbol(inputString: "3")
                })
                {Text ("3")
                    .modifier(ButtonShape())                }
                Button(action: {
                    print("4 Button taped!")
                    insertSymbol(inputString: "4")
                    })
                {Text ("4")
                    .modifier(ButtonShape())               }
                Button(action: {
                    print("5 Button taped!")
                    insertSymbol(inputString: "5")
                    })
                {Text ("5")
                    .modifier(ButtonShape())
                }
            }
        }
    }
}

struct ButtonShape: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 20, height: 20)
            .font(.body)
            .padding(5)
            .foregroundColor(Color.white)
            .background(Color.green)
            .cornerRadius(10)
    }
}
struct AppView_Previews: PreviewProvider {
    //    @available(iOS 13.0.0, *)
    static var previews: some View {
        AppView()
    }
}
