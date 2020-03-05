import UIKit

class JokeDefinitionController: UIViewController {
    
    var joke = ""

    @IBOutlet weak var jokeDefinition: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = joke
        
        if joke == "Chicken" {
            jokeDefinition.text = "Q: Why did the chicken cross the road?\n\nA: To get to the other side"
        } else if joke == "Walk into a bar..." {
            jokeDefinition.text = "Two men walk into a bar…\n\nOne of them says: 'Drinks are on I.'\n\nThe other says: 'No, drinks are on ME!'\n\n'Have it your way!' says the first."
        } else if joke == "Olives" {
            jokeDefinition.text = "Two olives are pals, and they're hanging from the tree like they've been for months.\n\nSuddenly, one falls to the ground.\n\nThe remaining one says, 'Are you ok?' \n\nAnd the other replies, 'Olive!'"
        } else if joke == "Racer" {
            jokeDefinition.text = "Q: Why did the Racer cut off all his fingers?\n\nA: So he could write shorthand."
        } else {
            jokeDefinition.text = ""
        }
    }
    

}
