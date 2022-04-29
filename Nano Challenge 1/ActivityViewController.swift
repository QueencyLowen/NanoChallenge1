//
//  ActivityViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 28/04/22.
//

import UIKit

class ActivityViewController: UIViewController {

    @IBOutlet weak var activitiesTF: UITextField!
    @IBOutlet weak var ssActivityTF: UITextField!
    @IBOutlet weak var activityPhoto1: UIImageView!
    @IBOutlet weak var activityPhoto2: UIImageView!
    @IBOutlet weak var activityTF: UITextField!
    @IBOutlet weak var activityLabel: UILabel!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    var inputActivity: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activitiesTF.layer.borderWidth = 1
        activitiesTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        activitiesTF.layer.cornerRadius = 8
        
        ssActivityTF.layer.borderWidth = 1
        ssActivityTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        ssActivityTF.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
        
        activityPhoto1.layer.cornerRadius = 8
        activityPhoto2.layer.cornerRadius = 8
    }
    
    @IBAction func backBtn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func addBtn(_ sender: UIButton) {
        inputActivity.append(activitiesTF.text ?? "Blank")
        activitiesTF.text = ""
        var penampungSementara:String = ""
        for name in inputActivity {
            penampungSementara = "\(penampungSementara)   \(name)"
        }
        activityLabel.text = penampungSementara
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
