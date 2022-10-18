import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var aVal: UITextField!
    @IBOutlet weak var bVal: UITextField!
    @IBOutlet weak var cVal: UITextField!
    @IBOutlet weak var x1Lbl: UILabel!
    @IBOutlet weak var x2Lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        x1Lbl.text = ""
        x2Lbl.text = ""

    }

    @IBAction func Resolver(_ sender: Any) {
        let a = Double(aVal.text!)!
        let b = Double(bVal.text!)!
        let c = Double(cVal.text!)!
        
        var disc = (b*b)-(4*a*c)
        if disc > 0 {
            let x1 = (-b + (sqrt((b*b)-(4*a*c))))/(2*a)
            let x2 = (-b - (sqrt((b*b)-(4*a*c))))/(2*a)
            
            x1Lbl.text = "X1: \(x1)"
            x2Lbl.text = "X2: \(x2)"
        }
        else{
            disc.negate()
            let x1 = -b/(2*a)
            let x2 = (sqrt(disc))/(2*a)
            let n = round(x1 * 1000)/1000
            let i = round(x2 * 1000)/1000
                       
            x1Lbl.text = "X1: \(n) + \(i) i"
            x2Lbl.text = "X2: \(n) - \(i) i"
        }
               

    }
    
}

