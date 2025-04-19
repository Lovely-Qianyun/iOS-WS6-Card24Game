import Foundation

class Game {
    
    var cardStack: [String] = []
    var equation: String = ""
    
    
    
    func clearPreString() {
        
        equation = ""
    }
    
    func getEquation() -> String {
        
        return self.equation
    }
    
    func calculator(equation: String) -> Int {
        
        var result: NSNumber = 0
        
        SwiftTryCatch.try ({
            
            let expression = NSExpression(format: equation)
            
            result = expression.expressionValue(with: nil, context: nil) as! NSNumber
            }, catch: { (error) in
                
                result = NSNumber(value: -99999)
                
            }, finallyBlock: {
        })
        
        return Int(truncating: result);
        
    }
    
    func pushCard(card: String) {
        
        cardStack.append(card)
        equation += String(rankToInt(content:card))
    }
    
    func pushOperation(operation: String) {
        
        equation += operation
    }
    
    func rankToInt(content: String)  -> Int {
        
        let rank = content[content.index(content.startIndex, offsetBy:1)...]
        
        let lookUpTable: [String] = Deck.rankString
        
        for index in 0...12 {
            
            if lookUpTable[index] == rank {
                var trueIndex = index
                trueIndex = trueIndex + 1;
                return trueIndex
            }
            
        }
        
        return -1
        
    }
}

