// VFL

import UIKit

class ViewController: UIViewController, ArrayLabels {
    
    var myLabels = [GenerationLabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabels = arrLabels()
        myLabels.forEach {
            self.view.addSubview($0)
        }
        
        var dictionary = [String: Any]()
        
        for i in 0..<myLabels.count {
            dictionary["label\(i)"] = myLabels[i]
            myLabels[i].translatesAutoresizingMaskIntoConstraints = false
        }
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|-50-[label0]-10-[label1]-10-[label2]-10-[label3]-10-[label4]",
            options: [],
            metrics: nil,
            views: dictionary))
        
        self.view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|-[label0]-10-[label1]-10-[label2]-10-[label3]-10-[label4]",
            options: [],
            metrics: nil,
            views: dictionary))
    }
}

