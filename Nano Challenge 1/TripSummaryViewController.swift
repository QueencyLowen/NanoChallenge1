//
//  TripSummaryViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 28/04/22.
//

import UIKit

class TripSummaryViewController: UIViewController {

    @IBOutlet weak var entryTitleTF: UITextField!
    @IBOutlet weak var shortSummaryTF: UITextField!
    @IBOutlet weak var thumbnailPhoto: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //change border color in entryTitleTF
        entryTitleTF.layer.borderWidth = 1
        entryTitleTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        entryTitleTF.layer.cornerRadius = 8
        
        //attributes for short summary
        shortSummaryTF.layer.borderWidth = 1
        shortSummaryTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        shortSummaryTF.layer.cornerRadius = 8
        
        //attributes for thumbnail photo
        //thumbnailPhoto.layer.masksToBounds = true
        //shadowView.layer.shadowOffset = CGSize(width: 10, height: 10)
        thumbnailPhoto.layer.cornerRadius = 8
        
        // Buat UIView dengan frame ukurannya sama persis dengan frame thumbnailphoto
        // setelah itu buat property shadow nya ke si view ini
        // Setelah di create uiView nya baru di addsubview ke si thumbnailphoto
        //let shadowView = UIView(frame: CGRect()

        //shadowView.layer.shadowColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 1)
        //shadowView.layer.shadowRadius = 9
        //shadowView.layer.shadowOpacity = 0.5
        //shadowView.layer.shadowPath = UIBezierPath(rect: CGRect(x: thumbnailPhoto.bounds.minX, y: thumbnailPhoto.bounds.minY, width: thumbnailPhoto.frame.width, height: thumbnailPhoto.frame.height)).cgPath
        
        //thumbnailPhoto.addSubview(shadowView)
        
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
