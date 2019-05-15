//

import UIKit

class GenerationLabel: UILabel {
    
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        self.backgroundColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        self.textColor = UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1)
        
        self.text = {
            var text: String = ""
            let count = Int.random(in: 3...8)
            
            for _ in 0...count {
                text += "\(Int.random(in: 0...9))"
            }
            
            return text
        }()
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

protocol ArrayLabels {
}

extension ArrayLabels {
    
    func arrLabels() -> [GenerationLabel] {
        var array = [GenerationLabel]()
        
        for _ in 1...5 {
            array.append(GenerationLabel())
        }
        
        return array
    }

    
}
