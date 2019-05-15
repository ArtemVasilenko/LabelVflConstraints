// VFL

import UIKit

class ViewController: UIViewController, ArrayLabels {
    
    var myLabel = GenerationLabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        myLabel.center = self.view.center
        self.view.addSubview(myLabel)
        
        arrLabels().forEach {
            self.view.addSubview($0)
        }
        
        
        
    }

    

}

