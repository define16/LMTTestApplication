//
//  TestingViewController.swift
//  LMTtest
//
//  Created by std_1210_18 on 2017. 6. 5..
//  Copyright © 2017년 Junhyeong Cho. All rights reserved.
//

import UIKit

class TestingViewController: UIViewController {
    
    @IBOutlet weak var drawing: UIImageView!
    @IBOutlet weak var orderlabel: UILabel!
    @IBOutlet weak var nextButton: UIButton!
    @IBOutlet weak var ToExplanationButton: UIButton!
    @IBOutlet weak var firstorderlabel: UILabel!
    
    var count:Int = 1
    var lastPoint = CGPoint.zero
    var swiped = false
    
    var red:CGFloat = 0.0
    var green:CGFloat = 0.0
    var blue:CGFloat = 0.0
    var lineWidth:CGFloat = 1
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        tool = UIImageView()
//        tool.frame = CGRect(x: self.view.bounds.size.width, y: self.view.bounds.size.height, width: 5, height: 5)
//        
//        self.view.addSubview(tool)
        // Do any additional setup after loading the view
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = false
        if let firstTouch = touches.first {
            lastPoint = firstTouch.location(in: view)
        }
    }
    

    
    func drawLine(fromPoint : CGPoint, toPoint : CGPoint) {
        UIGraphicsBeginImageContext(self.view.frame.size)
        drawing.image?.draw(in: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
        
        let context = UIGraphicsGetCurrentContext()
        context?.move(to: CGPoint(x: fromPoint.x, y: fromPoint.y))
        context?.addLine(to: CGPoint(x: toPoint.x, y: toPoint.y))
        
        context?.setBlendMode(CGBlendMode.normal)
        context?.setLineCap(CGLineCap.round)
        context?.setLineWidth(lineWidth)
        context?.setStrokeColor(UIColor(red: red, green: green, blue: blue, alpha: 1.0).cgColor)
        context?.strokePath()
        
        drawing.image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        swiped = true
        
        if let touch = touches.first {
            let currentPoint = touch.location(in: self.view)
            drawLine(fromPoint: lastPoint, toPoint: currentPoint)
            
            lastPoint = currentPoint
        }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        if !swiped {
            drawLine(fromPoint: lastPoint, toPoint: lastPoint)
        }
    }
    
    @IBAction func NextonButton(_ sender: UIButton) {
        count += 1
        orderlabel.isHidden = false
        firstorderlabel.isHidden = true
        switch (count) {
        case 2:
            orderlabel.text = "다음은 화면에 산을 그려주세요."
            break
            
        case 3:
            orderlabel.text = "다음은 화면에 밭 또는 논을 그려주세요."
            break
            
        case 4:
            orderlabel.text = "다음은 화면에 길을 그려주세요."
            break
        case 5:
            orderlabel.text = "다음은 화면에 집을 그려주세요."
            break
            
        case 6 :
            orderlabel.text = "다음은 화면에 나무을 그려주세요."
            break
            
        case 7:
            orderlabel.text = "다음은 화면에 사람을 그려주세요."
            break
            
        case 8:
            orderlabel.text = "다음은 화면에 꽃을 그려주세요."
            break
            
        case 9:
            orderlabel.text = "다음은 화면에 동물을 그려주세요."
            break
            
        case 10:
            orderlabel.text = "마지막으로 화면에 돌을 그려주세요."
            break
        default :
            orderlabel.text = "해석을 보고 싶으시다면 옆에 있는 버튼을 눌러주세요."
            ToExplanationButton.isHidden = false
            nextButton.isHidden = true
            break
        }
        
    }
    @IBAction func finishIonButton(_ sender: UIButton) {    //이미지 저장
        
        let controller = UIAlertController(title: "사진을 저장하시겠습니까??", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "저장되었습니다!"
            
            // 그림 저장하기.
            if let image = self.drawing.image {
                UIImageWriteToSavedPhotosAlbum(image, nil, nil, nil)
            }
            
            
            let controlloer2 = UIAlertController(title: "저장완료!", message: msg, preferredStyle: .alert)
            let nextAction = UIAlertAction(title: "다음으로", style: .default, handler: {
                action in self.performSegue(withIdentifier: "toexplanation", sender: self)
            })
            controlloer2.addAction(nextAction)
    
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        let nextAction = UIAlertAction(title: "아니오!", style: .default, handler: {action in
            let msg = "다음 단계로 갑니다."
            let controlloer2 = UIAlertController(title: "해석보기!", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "아니오", style: .default, handler: nil)
            let nextAction = UIAlertAction(title: "다음으로", style: .default, handler: {
                action in self.performSegue(withIdentifier: "toexplanation", sender: self)
        })
            controlloer2.addAction(cancelAction)
            controlloer2.addAction(nextAction)
            
            self.present(controlloer2, animated: true, completion: nil)
            
        })

        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction) 
        controller.addAction(nextAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)

    }

    @IBAction func removeOnButton(_ sender: UIButton) {
        red = 1
        green = 1
        blue = 1
        lineWidth = 10
    }

    @IBAction func drawingonButton(_ sender: UIButton) {
        red = 0
        green = 0
        blue = 0
        lineWidth = 1
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
