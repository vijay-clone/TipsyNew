
import Foundation

struct CalModel {
    var tip = 0.1
    var numberOfPeople = 2
    var totalValue = "0.0"
    

    mutating func calculateTip(tipValue:String) {
        
        let buttonValue = Double(tipValue)!
        self.tip = buttonValue / 100
    }
    mutating func numberOf(number:Double){
        numberOfPeople = Int(number)
    }
    mutating func calculateTotal(text:String){
        let doubleValue = Double(text)!
        let finalValue = doubleValue *  tip  / Double(numberOfPeople)
        totalValue = String(format: "%0.1f", finalValue)
    }
    
}

