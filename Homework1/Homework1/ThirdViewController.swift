
import UIKit

class ThirdViewController: UIViewController {
    
    
    @IBOutlet weak var numberInput: UITextField!
    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBAction func calculateButton(sender: AnyObject) {
        
        var userNumber:Int = numberInput.text.toInt()!
        
        if (userNumber % 2 == 0) {
            
            printLabel.text = "The number is even"
        }
        
        else {
            
            printLabel.text = ""
        }
        
        }
    
    }
    
    
  /*
  TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
  
  */
