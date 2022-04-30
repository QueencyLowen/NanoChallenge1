//
//  FoodViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 29/04/22.
//

import UIKit

class FoodViewController: UIViewController {

    @IBOutlet weak var foodDropDown: UIButton!
    @IBOutlet weak var foodTF: UITextField!
    @IBOutlet weak var ssfoodTF: UITextField!
    @IBOutlet weak var containerfoodsTF: UITextField!
    @IBOutlet weak var foodLabel: UILabel!
    
    var inputFood: [String] = []
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        foodTF.layer.borderWidth = 1
        foodTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        foodTF.layer.cornerRadius = 8
        
        ssfoodTF.layer.borderWidth = 1
        ssfoodTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        ssfoodTF.layer.cornerRadius = 8
        
        containerfoodsTF.layer.borderWidth = 1
        containerfoodsTF.layer.borderColor = CGColor(srgbRed: 0, green: 0, blue: 0, alpha: 0.3)
        containerfoodsTF.layer.cornerRadius = 8
        
        setPopupButton()
    }
        // Do any additional setup after loading the view.
    
    func setPopupButton(){
            let optionClosure = {(action : UIAction) in print(action.title)}
            
            foodDropDown.menu = UIMenu(children: [UIAction(title: "Breakfast", state: .on, handler: optionClosure),UIAction(title: "Brunch",  handler: optionClosure),UIAction(title: "Lunch", handler: optionClosure),UIAction(title: "Dinner", handler: optionClosure),UIAction(title: "Dessert", handler: optionClosure),UIAction(title: "Snack", handler: optionClosure)])
            
            foodDropDown.showsMenuAsPrimaryAction = true
            foodDropDown.changesSelectionAsPrimaryAction = true
        }
    
    
    @IBAction func addBtn(_ sender: Any) {
        inputFood.append(foodTF.text ?? "Blank")
        foodTF.text = ""
        var penampungSementara:String = ""
        for name in inputFood {penampungSementara =
            "\(penampungSementara)   \(name)   "
        }
        foodLabel.text = penampungSementara
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
