//
//  DetailViewController.swift
//  MyStory
//
//  Created by Dr.Pennybag$ on 3/14/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var answer: UILabel!
    var detailInfo: Information?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let detailInfo = detailInfo{
                    image.image = detailInfo.image
                    answer.text = detailInfo.paragraph
                }
        
        
        // Do any additional setup after loading the view.
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
