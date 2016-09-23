//
//  FilterViewController.swift
//  Assignment1
//
//  Created by Bryan McLellan on 9/23/16.
//  Copyright © 2016 Sherman Leung. All rights reserved.
//

import UIKit

protocol FiltersViewDelegate {
    func filterSearch(ModalViewController: ModalViewController, gender:String, age: Int);
}

class ModalViewController: UIViewController {

    
    var myAge:Int = 16
    var myGender:String = "Male"
    var delegate: FiltersViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("did the modal")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func closeModal(_ sender: AnyObject) {
        print("dismissing")
        self.dismiss(animated: true, completion: nil)
    }

    @IBAction func filterSearch(_ sender: AnyObject) {
        delegate?.filterSearch(ModalViewController: self, gender: myGender, age: myAge)
        self.dismiss(animated: true, completion: nil)
        print("searched")
    }
    
    @IBAction func ageChanged(_ sender: UITextField) {
        myAge = Int(sender.text!)!
        print(myAge)
    }
    
    
    @IBAction func genderChanged(_ sender: UISegmentedControl) {
        let index = sender.selectedSegmentIndex
        if index == 0{
            myGender = "Male"
        }
        else {
            myGender = "Female"
        }
        print(myGender)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
