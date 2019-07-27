//
//  TryDropDownViewController.swift
//  iOSDropDown_Example
//
//  Created by WongMike on 27/7/2019.
//  Copyright © 2019 CocoaPods. All rights reserved.
//

import UIKit
import iOSDropDown
class TryDropDownViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDropDownTop()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBOutlet weak var dropDownTop: DropDown!
    
    func setDropDownTop(){
        print("HELLO??")
        // The list of array to display. Can be changed dynamically
        dropDownTop.optionArray = ["Option 1", "Option 2", "Option 3"]
        //Its Id Values and its optional
        dropDownTop.optionIds = [1,2,3]
        
        dropDownTop.rowBackgroundColor = .black
        
    
        
        
//        dropDownTop.backgroundColor = .white
        // Image Array its optional
        //        dropDownTop.ImageArray = [👩🏻‍🦳,🙊,🥞]
        // The the Closure returns Selected Index and String
        //        dropDownTop.didSelect{(selectedText , index ,id) in
        //            self.valueLabel.text = "Selected String: \(selectedText) \n index: \(index)"
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
