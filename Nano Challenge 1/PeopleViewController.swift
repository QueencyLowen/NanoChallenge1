//
//  PeopleViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 28/04/22.
//

import UIKit

class PeopleViewController: UIViewController {

    @IBOutlet weak var buddiesTF: UITextField!
    @IBOutlet weak var buddiesPhoto1: UIImageView!
    @IBOutlet weak var buddiesPhoto2: UIImageView!
    @IBOutlet weak var buddiesLabel: UILabel!
    
    var inputBuddies: [String] = []
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
 
    @IBAction func addBtn(_ sender: Any) {
        inputBuddies.append(buddiesTF.text ?? "Blank")
        buddiesTF.text = ""
        var penampungSementara:String = ""
        for name in inputBuddies {
            penampungSementara = "\(penampungSementara)   \(name)   "
        }
        buddiesLabel.text = penampungSementara
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        buddiesTF.layer.borderWidth = 1
        buddiesTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        buddiesTF.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
        
        buddiesPhoto1.layer.cornerRadius = 8
        buddiesPhoto2.layer.cornerRadius = 8
    }
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
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
