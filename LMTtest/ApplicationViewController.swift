//
//  ApplicationViewController.swift
//  LMTtest
//
//  Created by junhyeong cho on 2017. 6. 4..
//  Copyright © 2017년 Junhyeong Cho. All rights reserved.
//

import UIKit

class ApplicationViewController: UIViewController {


  
    @IBOutlet weak var nametext: UITextField!
    @IBOutlet weak var nametext1: UITextField!
    @IBOutlet weak var gender: UITextField!
    @IBOutlet weak var gender1: UITextField!
  
    @IBOutlet weak var genderSwitch: UISwitch!
    @IBOutlet weak var genderSwitch1: UISwitch!
    
    
    @IBOutlet weak var brithdayfield: UITextField!
    @IBOutlet weak var brithdayfield1: UITextField!

    
    
    @IBOutlet weak var picker1: UIDatePicker!
    @IBOutlet weak var picker: UIDatePicker!
    @IBOutlet weak var jobLabel: UILabel!
    @IBOutlet weak var jobLabel1: UILabel!
    @IBOutlet weak var jobText: UITextField!
    @IBOutlet weak var jobText1: UITextField!
    @IBOutlet weak var brithdaybutton: UIButton!
    @IBOutlet weak var brithdaybutton1: UIButton!

    @IBOutlet weak var marrylabel: UILabel!
    @IBOutlet weak var marrylabel1: UILabel!
    
    @IBOutlet weak var marryed: UITextField!
    @IBOutlet weak var marryed1: UITextField!


    
    @IBOutlet weak var marrySegment: UISegmentedControl!
    @IBOutlet weak var marrySegment1: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let date = NSDate()
        picker.setDate(date as Date, animated: false)

        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        
//        if self.isMovingFromParentViewController {
//            
//                let count = parent?.childViewControllers.count
//                let listVC =  parent?.childViewControllers[count!-1] as! ResultViewController
//
//                listVC.names.append(nametext.text!)
//                listVC.genders.append(gender.text!)
//                listVC.brithdays.append(brithdayfield.text!)
//                listVC.jobs.append(jobText.text!)
//                listVC.marryeds.append(marryed.text!)
//                    
//
//        }
//    }
    @IBAction func onViewTapGestureRecognized(_ sender: Any) {
        nametext.resignFirstResponder()
        jobText.resignFirstResponder()
    }
    
    @IBAction func onSwitchCanded(_ sender: UISwitch) {
        let setting = sender.isOn
        if setting {
            gender.text = "남자"
            gender1.text = "남자"
        }
        else {
            gender.text = "여자"
            gender1.text = "여자"
        }
        
    }
    
    @IBAction func Segment(_ sender: UISegmentedControl) {
      //  marryed.text = "\(lroundf(sender.values))"
        if sender.selectedSegmentIndex == 0 {
            marryed.text = "미혼"
            marryed1.text = "미혼"
        }
        else {
            marryed.text = "기혼"
            marryed1.text = "기혼"
        }
        
    }
    
    @IBAction func pickerbutton(_ sender: UIButton) {
        let date = picker.date
        brithdayfield.text =  "\(date)"
        brithdayfield1.text =  "\(date)"
        
        picker.isHidden = true
        brithdaybutton.isHidden = true
        jobLabel.isHidden = false
        jobText.isHidden = false
        marrylabel.isHidden = false
        marryed.isHidden = false
        marrySegment.isHidden = false
 
        
        picker1.isHidden = true
        brithdaybutton1.isHidden = true
        jobLabel1.isHidden = false
        jobText1.isHidden = false
        marrylabel1.isHidden = false
        marryed1.isHidden = false
        marrySegment1.isHidden = false
    }
    
    @IBAction func brithdayOnButton(_ sender: UIButton) {
        picker.isHidden = false
        brithdaybutton.isHidden = false
        jobLabel.isHidden = true
        jobText.isHidden = true
        marrylabel.isHidden = true
        marryed.isHidden = true
        marrySegment.isHidden = true

        
    }
    @IBAction func brithdayOnButton1(_ sender: UIButton) {
        picker1.isHidden = false
        brithdaybutton1.isHidden = false
        jobLabel1.isHidden = true

        jobText1.isHidden = true
        marrylabel1.isHidden = true
        marryed1.isHidden = true
        marrySegment1.isHidden = true
    }
    

    @IBAction func cancelonButton(_ sender: UIButton) {
        
        let msg = "취소를 원하시면 아니오 버튼을 눌러주세요!"
        let controlloer = UIAlertController(title: "정말 상담신청을 취소하시겠습니까??", message: msg, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "아니오", style: .default, handler: nil)
        let yesAction = UIAlertAction(title: "예", style: .cancel, handler: {
            action in self.performSegue(withIdentifier: "BacktToExplanation", sender: self)
        })
        
        controlloer.addAction(yesAction)
        controlloer.addAction(cancelAction)
        self.present(controlloer, animated: true, completion: nil)
        
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let listVC = segue.destination as! ResultViewController
        
        listVC.names.append(nametext.text!)
        listVC.genders.append(gender.text!)
        listVC.brithdays.append(brithdayfield.text!)
        listVC.jobs.append(jobText.text!)
        listVC.marryeds.append(marryed.text!)
        

    }
 

}
