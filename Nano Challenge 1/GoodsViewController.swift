//
//  GoodsViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 29/04/22.
//

import UIKit

class GoodsViewController: UIViewController {

    @IBOutlet weak var ssgoodsTF: UITextField!
    @IBOutlet weak var goodsTF: UITextField!
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        goodsTF.layer.borderWidth = 1
        goodsTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        goodsTF.layer.cornerRadius = 8

        ssgoodsTF.layer.borderWidth = 1
        ssgoodsTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        ssgoodsTF.layer.cornerRadius = 8
        // Do any additional setup after loading the view.
    }
    
    @IBAction func backBtn(_ sender: Any) {
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
