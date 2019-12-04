//
//  ViewController.swift
//  11.27
//
//  Created by s20181106119 on 2019/11/27.
//  Copyright © 2019 s20181106119. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    let questions = ["马云是中国首富吗？",
                     "刘强东最早是在中关村卖光盘的？",
                     "苹果公司是目前世界上最牛的科技公司？",
                     "只要坚持下去就能学好代码吗？",
    "王思聪是80后n吗？"]
    let questionanswer = [1,0,0,1,1];

    override func viewDidLoad() {
        Answer.text = questions[0]
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countlabel.text = "\(questionsindex+1)/5"
        scorelabel.text = "\(score)"
    }
    
    
    var score = 0
    @IBOutlet weak var Answer: UILabel!
    var questionsindex:Int = 0

    @IBOutlet weak var countlabel: UILabel!
    
    @IBOutlet weak var scorelabel: UILabel!
    var grade:Int = 0
    @IBAction func yes(_ sender: Any) {
         checkanswer(useranswer: 1)
        next()
    }
    
    @IBAction func no(_ sender: Any) {
         checkanswer(useranswer: 0)
        next()
    }
    func next(){
        questionsindex = questionsindex + 1
      
        if(questionsindex == 5)
        {
            score = 0
            questionsindex = 0
            
        }
        countlabel.text = "\(questionsindex+1)/5"
    Answer.text = questions[questionsindex]
        
    }
    func checkanswer(useranswer:Int)
    {
        if(questionanswer[questionsindex] == useranswer)
        {
            //print("答对了")
            score = score + 1
            scorelabel.text = "\(score)"
            
        }
        //else
        //{
          //  print("答错了")
        //}
    }
}
    
    

    
    


