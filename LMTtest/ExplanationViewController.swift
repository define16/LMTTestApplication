//
//  ExplanationViewController.swift
//  LMTtest
//
//  Created by junhyeong cho on 2017. 6. 4..
//  Copyright © 2017년 Junhyeong Cho. All rights reserved.
//

import UIKit

class ExplanationViewController: UIViewController {

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    @IBAction func RiverButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "강에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "강은 물의 흐름이고, 종종 무의식의 흐름에 비유된다. 무의식에 지배당하고 있는 상태의 환자들은 물이 세차게 흐르는 큰 강을 그리거나 범람하여 물이 넘치는 그림을 그리는 경우가 많다. 강박 경향이 강한 사람이나 무의식에 대해 자아 경계가 약한 사람은 강기슭을 꼼꼼하게 돌로 쌓거나 콘크리트로 제방을 쌓는 그림을 그리는 경우도 있고, 때로는 도랑을 그려 분산되게 흐르게 함으로써 성공적으로 급속한 평온을 나타내는 경우도 있다. 정신분열증의 발병 기에 있는 사람이나 신경증이 심한 사람은 강을 지나치게 크게 그리거나 물의 양이 많은 것으로 그리는 경우가 있다."
            let controlloer2 = UIAlertController(title: "[강]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func MountainButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "산에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "산은 그리는 사람이 처해 있는 상황과 앞으로의 전망을 나타내거나 종종 극복해야 할 문제의 수를 시사하기도 한다. 이를테면 멀리 솟아있는 산은 한 번은 저 산에 오르고 싶다는 희망을 나타내고, 도달해야 될 생의 마지막 목표로서의 위치를 나타내는 반면, 눈앞에 버티고 서서 앞길을 막고 있는 경우는 어려움이나 장애 등이 가로 놓여있음을 의미하기도 한다."

            let controlloer2 = UIAlertController(title: "[산]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func FieldButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "밭 또는 논에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "밭(논)은 평지에서 경작되고 마무리되는 부분이다. 그려진 계절과 벼의 상태에서 모내기, 파릇파릇하게 성장, 벼 이삭의 결실, 추수, 추수 후, 휴경지 등 여러 시기가 나타난다. 이것은 그리는 사람의 마음이 지향하고 있는 시기를 암시하기도 하고, 때로는 발병했을 때, 때로는 즐거웠을 때, 또 때로는 미래를 암시하는 경우도 있다. 한편 밭에서 일하는 사람의 모습이나 경작하고 정리하며 손질하는 이미지에서 해야 될 일과 관련 일 나타내는 경우가 있다. 특히 아동이나 학생의 경우에는 면학과의 관계를 나타내기도 하지만, 일반적으로는 문제나 의무와의 과계를 나타내기도 한다. 또 인격이 형성되고 통제되는 것으로도 볼 수 있다. 이런 의미에서 문화나 교양을 습득한 방법이나 통합의 정도를 볼 수 있다. 또 공간 구성에 볼 때, 밭만 조감도적으로 구성하여 공간이 왜곡되고 이질적 부분으로 나타나는 경우도 있다. 반대로 벼를 정성 들여 그리고 벼 이삭까지 한 알 한 알 빈틈없이 그리는 사람은 강박 경향뿐만 아니라 식물의 존재에 관심을 가지는 섬세한 심성의 일면을 드러낸다. 그리고 종종 밭에 일하는 사람이 배치되는데, 이것이 무관심, 등교거부, 비행 등을 저지른 경우나 학업에 태만한 사람에게서 많이 나타나는 것은 의식 면에서의 게으름에 대한 보상이기도 하다."
            
            let controlloer2 = UIAlertController(title: "[밭] 또는 [논]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func RoadButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "길에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "길은 의식이고 인생의 길로서 명확하게 의식되는 것을 표현하는 경우가 있으며, 길이 강 위의 다리와 연결되어 있으면 안심할 수 있다. 길은 행선지를 암시하는 경우가 있으며, 그 행선지가 확실하게 시사되어 있는 경우와 행선지가 정해져 있지 않는 경우가 있다. 여성에게서 강을 건넌다는 의미는 강을 건너 다른 세계로 간다는 것, 즉 결혼을 의미하는 반면, 남성에게서는 결혼은 다른 세계로 갈 정도의 큰 변화는 아니다. 남성에게서 강을 건넌다는 의미는 오히려 다른 것을 추구한다는 정도의 의미이다."
            let controlloer2 = UIAlertController(title: "[길]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func HouseButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "집에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "집은 성장한 가정환경을 나타낸다. 자신의 가정 상황과 가족 관계를 어떻게 인지하여 어떤 감정과 태도를 자기고 있는가를 나타내는 경우가 많다. 따라서 집은 현재의 가정에 대한 인식뿐 만 아니라 과거의 가정이나 미래의 이상적인 가정을 나타낸다."
            let controlloer2 = UIAlertController(title: "[집]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func TreeButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "나무에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "나무는 기본적으로 자기상을 나타낸다. 다시 말해 나무는 무의식적으로 자기 자신의 모습으로 느끼고 있는 것을 나타낸다. 그것은 자신의 마음의 평형 상태에 대하여 느끼고 있는 것, 즉 정신의 성숙도를 나타낸다. 그러나 나무는 자기상을 나타낼 뿐 만 아니라 특정한 인물을 상징하고, 그 인물에 대한 감정과 욕구를 나타내는 경우도 있다."
            let controlloer2 = UIAlertController(title: "[나무]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func PersonButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "사람에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "사람은 경계심과 자신에 대한 방어를 야기하며, 그런 만큼 의식적이거나 무의식적으로 자신의 모습을 왜곡시키거나 자기 이외의 다른 사람의 모습으로 나타난다. 인물화는 자기의 현실적인 이미지나 이상적인 이미지를 나타내며 자신에게 의미 있는 사람이나 일반적인 사람을 어떻게 인지하고 있는가를 나타낸다."
            let controlloer2 = UIAlertController(title: "[사람]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func FlowerButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "꽃에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "꽃은 생활의 장식이고 화려함이며, 바로 색을 첨가하는 것이다. 그러나 그것은 때로는 높은 산봉우리에 피어있는 꽃이고, 때로는 장계식의 헌화이다. 새빨갛게 양쪽 길가를 장식하는 석산화는 영혼들을 공양하는 꽃이고, 불가사의하게 육친의 죽음을 애도하는 아이들의 그림에 자주 보여지는 것이다. 강에 흘러가는 꽃, 베란다에 장식된 꽃, 각각에 주어진 의미가 미묘하게 다른 것은 말할 것도 없다. 애써 그린 꽃에 색칠을 하지 않는 경우는 감정이 실감 나게 느껴지지 않는다는 하나의 표현으로 정신분열증 환자들에게 많이 나타난다."
            let controlloer2 = UIAlertController(title: "[꽃]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func AnimalButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "동물에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "동물의 경우, 정신분열증 환자나, 대인공포증을 가진 사람들 가운데 토끼를 즐겨 그리는 사람들이 있다. 민감한, 겁이 많음, 의지할 곳 없음, 어떤 무기도 없어 기댈 곳 없는 등의 속성이 그대로 들어맞는다. 그러나 때로 그들은 고슴도치, 매, 상처 입은 사자 등의 모습으로 억압받고 쌓인 공격성을 단번에 표출하는 경우도 있다. 그리고 동물을 보는 하나의 관점으로 동물의 크기를 들 수 있다. 물론 그려진 화면에서의 크기도 고려하지만, 그 동물이 가지는 원래의 크기에 주목하며, 사람을 기준으로 한다. 즉 사람을 1도 하고, 1보다 크면 그 사람이 가지는 에너지가 크다는 것을, 작으면 에너지가 작다는 것을 나타낸다는 것이다. 예를 들어 등교 거부 아동이 종종 소나 말을 그리는 경우가 많은 것은 밖으로 드러나는 에너지는 적으나 잠재하는 정신적 에너지가 크다는 것을 예측하게 한다. 반대로 굉장히 난폭하여 주위 사람들을 떨게 하는 학교 내 폭력 소년이 쥐를 그렸다면, 쥐가 다급하면 고양이를 물듯이 본인을 궁지로 몰아넣는 주위의 상황에 지금 한번 해 볼 필요를 느꼈다는 것이 된다."
            let controlloer2 = UIAlertController(title: "[동물]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
    @IBAction func RockButtonPressed(_ sender: UIButton) {
        let controller = UIAlertController(title: "돌에 대한 해석을 보시겠습니까?", message: nil, preferredStyle: .actionSheet)
        
        let yesAction = UIAlertAction(title: "예", style: .destructive, handler: {action in
            let msg = "돌의 의미는 깊고 무겁다. 최고의 속성은 단단함, 차가움, 불변성이다. 그 희소성과 아르다움이 귀하면 귀할 수 록 보석으로 존중되기도 하고, 영원불멸성을 빌어 묘석이 되기도 하며 기념비가 되기도 한다. 돌은 보통의 경우 눈에 뜨지 않는 것이고, 무수하게 많은 것으로 그 존재조차 알아차리지 못할 경우가 많다. 그러나 그것이 큰 돌이거나 큰 바위라면 우뚝 솟아 앞길을 가로막고, 무겁게 짓누르고 있어 장애가 되고 무거운 짐이 되며 엄격한 것을 나타내기도 한다. 또 적당한 크기의 동도 놓인 위체에 따라 여러 가지 의미를 가지게 된다. 길 위에 굴러가는 돌, 강 속으로 날아가는 돌, 지붕 위의 눈이 흘러내리지 않도록 괴는 돌, 논두렁이나 나무 아래에 있는 한 덩이의 돌, 산 정상의 이정표 등 사람과 돌의 관계는 의외로 깊다."
            let controlloer2 = UIAlertController(title: "[돌]에 대한 해석", message: msg, preferredStyle: .alert)
            let cancelAction = UIAlertAction(title: "닫기", style: .cancel, handler: nil)
            controlloer2.addAction(cancelAction)
            self.present(controlloer2, animated: true, completion: nil)
            
        })
        
        let noAction = UIAlertAction(title: "뒤로 가기", style: .cancel, handler: nil)
        
        controller.addAction(yesAction)
        controller.addAction(noAction)
        
        present(controller, animated: true, completion: nil)
    }
  
    @IBAction func NextButtonPressed(_ sender: UIButton) {
        
        let msg = "귀하의 테스트 결과를 바탕으로 전문 상담사에게 상담을 신청하시겠습니까??"
        let controlloer = UIAlertController(title: "전문 상담사와 연결", message: msg, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "아니오", style: .default, handler: nil)
        let yesAction = UIAlertAction(title: "예", style: .cancel, handler: {
            action in self.performSegue(withIdentifier: "explanationToCheck", sender: self)
        })
        
        controlloer.addAction(yesAction)
        controlloer.addAction(cancelAction)
        self.present(controlloer, animated: true, completion: nil)

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
