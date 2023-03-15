//
//  ViewController.swift
//  MyStory
//
//  Created by Dr.Pennybag$ on 3/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    let whereButtonInfo = Information(paragraph: "Gin Rummy was born and raised in Woodcrest, MD", image: UIImage(named: "woodcrest boondocks"))
    let occupationButtonInfo = Information(paragraph: "He's an Iraq war veteran, but now he picks up small jobs from Wuncler Industries", image: UIImage(named: "ginrummy war"))
    let HobbiesButtonInfo = Information(paragraph: "Likes robbing people / places. Professional menace to society ", image: UIImage(named: "gin rummy savage"))

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func didTapButton(_ sender: Any) {
        performSegue(withIdentifier: "detailSegway", sender: sender)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        
        if segue.identifier == "detailSegway",
           let senderButton = sender as? UIButton,
           let detailViewController = segue.destination as? DetailViewController {
            if senderButton.tag == 0{
                detailViewController.detailInfo = whereButtonInfo
            }
            else if senderButton.tag == 1{
                detailViewController.detailInfo = occupationButtonInfo
            }
            else if senderButton.tag == 2{
                detailViewController.detailInfo = HobbiesButtonInfo
            }
            else {
                print("no button tapped")
            }
        }
    }

}


