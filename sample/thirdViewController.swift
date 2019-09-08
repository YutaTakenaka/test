//
//  thirdViewController.swift
//  sample
//
//  Created by Yuta Takenaka on 2019/06/26.
//  Copyright © 2019 Yuta Takenaka. All rights reserved.
//

import UIKit

class thirdViewController: UIViewController{

    @IBOutlet weak var imagalabel: UILabel!
    @IBOutlet weak var labletext: UILabel!
    @IBOutlet weak var camerabutton: UIButton!
    @IBOutlet weak var imagesample: UIImageView!
    var image1: UIImage!
    //@IBOutlet weak var imagetext: UITextView!
    
    var getCell: Int!
    var getCell2: Int!
    // キャッチ
    let catchArray: [String] = ["1.上の方に配置しよう", "2.落下させよう", "3.キャッチするものを動かそう",
                                "4.キャッチしよう", "5.スコアをつけよう", "6.ボーナスポイント", "7.あなたの勝ち"]
    
    // ペット
    let petArray: [String] = ["1.ペットを紹介しよう", "2.ペットに動きをつけよう", "3.ごはんをあげよう",
                              "4.お水をあげよう", "5.ペットは何を話すのかな？", "6.遊びの時間だよ",
                              "7.お腹が空いた？"]
    
    // 選択されたジャンルの配列の長さ変数
    var arrayLength: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        switch getCell {
        // 0のとき
        case 0:
            //上ラベル
            imagalabel.text = catchArray[getCell2]
            //画像
            image1 = UIImage(named:"smartphone")!
            imagesample.image = image1
            camerabutton.setTitle("カメラで判断", for: .normal) // ボタンのタイトル
            //テキストラベル改行あり
            labletext.numberOfLines = 2;
            labletext.text = "Hello swift\nサンプルプログラミングです"
        // 1のとき
        case 1:
            //上ラベル
            imagalabel.text = petArray[getCell2]
            //画像
            image1 = UIImage(named:"smartphone")!
            imagesample.image = image1
            //テキストラベル改行あり
            labletext.numberOfLines = 2;
            labletext.text = "Hello swift\nサンプルプログラミングです"
        default:
            break
        }
        
        
        
        //テキストビュー
        /*imagetext.frame = CGRect(x: 0, y: 0, width: 300, height: 300)
         imagetext.center = self.view.center
         imagetext.textColor = UIColor.red
         imagetext.font = UIFont.systemFont(ofSize: 15)
         imagetext.text = "テキストビューの本文"
         imagetext.backgroundColor = UIColor.gray
         self.view.addSubview(imagetext)*/
        
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
