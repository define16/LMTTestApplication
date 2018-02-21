//
//  ResultViewController.swift
//  LMTtest
//
//  Created by std_1210_18 on 2017. 6. 6..
//  Copyright © 2017년 Junhyeong Cho. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UINavigationBarDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    private static let rootKey = "rootKey"
    
    let tabelIdentifier = "ResulttabelIdentifier"
    let applycell = "applyIdentity"
    
    var names: [String] = []
    var genders: [String] = []
    var brithdays: [String] = []
    var jobs: [String] = []
    var marryeds: [String] = []
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let fileURL = self.dataFileURL()
        if FileManager.default.fileExists(atPath: fileURL.path) {
            let data = NSMutableData(contentsOf: fileURL as URL)
            let unarchiver = NSKeyedUnarchiver(forReadingWith: data! as Data)
            let applyindex = unarchiver.decodeObject(forKey: ResultViewController.rootKey) as! ApplyIndex
            unarchiver.finishDecoding()
            
            if let newNames = applyindex.names {
                for i in 0..<newNames.count {
                    names.append(newNames[i])
                }
            }
            
            if let newGenders = applyindex.genders {
                for i in 0..<newGenders.count {
                    genders.append(newGenders[i])
                }
            }
            
            if let newBrithdays = applyindex.brithdays {
                for i in 0..<newBrithdays.count {
                    brithdays.append(newBrithdays[i])
                }
            }
            
            if let newJobs = applyindex.jobs {
                for i in 0..<newJobs.count {
                    jobs.append(newJobs[i])
                }
            }
            
            if let newMarryed = applyindex.marryeds {
                for i in 0..<newMarryed.count {
                    marryeds.append(newMarryed[i])
                }
            }
        }
        
        let app = UIApplication.shared
        NotificationCenter.default.addObserver(self, selector: #selector(self.applicationWillResignActive(notification:)), name: NSNotification.Name.UIApplicationWillResignActive, object: app)


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func applicationWillResignActive(notification: NSNotification) {
        let fileURL = self.dataFileURL()
        let applyindex = ApplyIndex()
        
        applyindex.names = names
        applyindex.genders = genders
        applyindex.brithdays = brithdays
        applyindex.jobs = jobs
        applyindex.marryeds = marryeds
        
   
        let data = NSMutableData()
        let archiver = NSKeyedArchiver(forWritingWith: data)
        archiver.encode(applyindex, forKey: ResultViewController.rootKey)
        archiver.finishEncoding()
        data.write(to: fileURL, atomically: true)
        
    }
    
    func dataFileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        var url: URL?
        url = URL(fileURLWithPath: "")
        do{
            url = try urls.first!.appendingPathComponent("data.archive")
        }
        catch {
            print("Error is \(error)")
        }
        
        return url!
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    // 섹션의 갯수: 상담목록만 할 거임
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // 섹션 안의 갯수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    // 보여주기
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: applycell)
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: applycell)
        }
        cell?.textLabel?.text = names[indexPath.row]
        cell?.detailTextLabel?.text = genders[indexPath.row]
        
        return cell!
    }
    

    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
// 

}
