
import UIKit

class SecondViewController: UIViewController {
    
    
    @IBOutlet weak var userNumber: UITextField!
    
    @IBOutlet weak var userTally: UILabel!
    
    @IBAction func userAdd(sender: AnyObject) {
        
        var number:Int = userNumber.text.toInt()!
        
        var tally:Int? = userTally?.text?.toInt()!
        
        var total = number + tally!
        
        userTally.text = String(total)

        
    }
  
  //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
}
