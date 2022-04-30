//
//  AddCameraViewController.swift
//  Nano Challenge 1
//
//  Created by Queency Lowen on 29/04/22.
//

import UIKit

class AddCameraViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var olstar1: UIButton!
    @IBOutlet weak var olstar2: UIButton!
    @IBOutlet weak var olstar3: UIButton!
    @IBOutlet weak var olstar4: UIButton!
    @IBOutlet weak var olstar5: UIButton!
    @IBOutlet weak var RatingCollectionViewCell: UICollectionViewCell!

    
    
    
    var starPressed = false
    
    @IBOutlet weak var ratingCollectionView: UICollectionView!
    var data: [Bool] = [false,false,false,false,false]
    var flag : Int = 0
    
    @IBAction func starPressed(_ sender: UIButton) {
        if starPressed == true {
            olstar1.setImage(UIImage(systemName: "star"), for: .normal)
            starPressed = false
        } else {
            olstar1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starPressed = true
        }
    }
    
    @IBAction func starPressed2(_ sender: UIButton) {
        if starPressed == true {
            olstar1.setImage(UIImage(systemName: "star"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star"), for: .normal)
            starPressed = false
        } else {
            olstar1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starPressed = true
        }
    }
    
    @IBAction func starPressed3(_ sender: UIButton) {
        if starPressed == true {
            olstar1.setImage(UIImage(systemName: "star"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star"), for: .normal)
            starPressed = false
        } else {
            olstar1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starPressed = true
        }
    }
    
    @IBAction func starPressed4(_ sender: UIButton) {
        if starPressed == true {
            olstar1.setImage(UIImage(systemName: "star"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star"), for: .normal)
            olstar4.setImage(UIImage(systemName: "star"), for: .normal)
            starPressed = false
        } else {
            olstar1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar4.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starPressed = true
        }
    }
    
    @IBAction func starPressed5(_ sender: UIButton) {
        if starPressed == true {
            olstar1.setImage(UIImage(systemName: "star"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star"), for: .normal)
            olstar4.setImage(UIImage(systemName: "star"), for: .normal)
            olstar5.setImage(UIImage(systemName: "star"), for: .normal)
            starPressed = false
        } else {
            olstar1.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar2.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar3.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar4.setImage(UIImage(systemName: "star.fill"), for: .normal)
            olstar5.setImage(UIImage(systemName: "star.fill"), for: .normal)
            starPressed = true
        }

    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationItem.hidesBackButton = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        ratingCollectionView.delegate = self
        ratingCollectionView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func backBtn(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = ratingCollectionView.dequeueReusableCell(withReuseIdentifier: "ratingCell", for: indexPath)as? RatingCollectionViewCell else{
            fatalError()
        }
    
        var icon: String = "star"
        if(data[indexPath.row]){
            icon = "star.fill"
        }
        cell.ratingButton.setImage(UIImage(systemName: icon), for: .normal)
        cell.ratingButton.tag = indexPath.row
        cell.ratingButton.addTarget(self, action: #selector(favPressed), for: .touchUpInside)
        cell.ratingButton.setTitle("", for: .normal)
        return cell
    }

    @objc func favPressed(_ sender: UIButton){
        let tag = sender.tag
        
        for i in 0..<data.count{
            
            if i<=tag && data[tag] == false{
                data[i] = true
                
            }else if i<=tag && tag != flag {
                data[i] = true
            }else{
                data[i] = false
            }
            
        }
        self.flag = tag
        ratingCollectionView.reloadData()
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    }
}
