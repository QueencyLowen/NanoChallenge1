//
//  LocationDateViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 28/04/22.
//

import UIKit

class LocationDateViewController: UIViewController {

    @IBOutlet weak var locationTF: UITextField!
    @IBOutlet weak var backBtn: UIButton!
    @IBOutlet weak var penampungSementara: UILabel!
    
    var inputlocation: [String] = []
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationTF.layer.borderWidth = 1
        locationTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        locationTF.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func backAction(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
 
    @IBAction func addBtn(_ sender: UIButton) {
        inputlocation.append(locationTF.text ?? "blank")
        locationTF.text = ""
        var penampungSementara2:String = ""
        for name in inputlocation {
            penampungSementara2 = "\(penampungSementara2)   \(name)   "
        }
        penampungSementara.text = penampungSementara2
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
