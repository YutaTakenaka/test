//
//  secondViewController.swift
//  sample
//
//  Created by Yuta Takenaka on 2019/06/25.
//  Copyright © 2019 Yuta Takenaka. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    // テーブルビュー
    @IBOutlet var secondTableView: UITableView!
    
    // ViewControllerから選択されたCell番号を受け取る変数
    var getCell: Int!
    var getCell2: Int!
    
    // セルの要素をあらかじめ決めうち
    // キャッチ
    let catchArray: [String] = ["1.上の方に配置しよう", "2.落下させよう", "3.キャッチするものを動かそう",
                                "4.キャッチしよう", "5.スコアをつけよう", "6.ボーナスポイント", "7.あなたの勝ち"]
    
    // ペット
    let petArray: [String] = ["1.ペットを紹介しよう", "2.ペットに動きをつけよう", "3.ごはんをあげよう",
                              "4.お水をあげよう", "5.ペットは何を話すのかな？", "6.遊びの時間だよ",
                              "7.お腹が空いた？"]
    
    // ジャンピング
    let JumpingArray: [String] = ["1.ジャンプ", "2.スタート位置につこう", "3.動く障害物", "4.音を加えよう",
                                  "5.ゲームオーバー", "6.障害物を追加しよう", "7.スコアをつけよう"]
    
    // ダンス
    let danceArray: [String] = ["ダンスの振り付け", "ダンスを繰り返そう", "ミュージックを流そう",
                                "かわりばんこ", "スタート位置", "シャドウの効果", "インタラクティブなダンス",
                                "色の効果","跡を残そう"]
    // ピンポン
    let pingpongArray: [String] = ["1.周りでバウンドさせよう", "2.パドルをう動かそう", "3.パドルで跳ね返そう",
                                   "4.ゲームオーバー", "5.スコアをつけよう", "6.ゲームに勝ったとき"]
    // 物語
    let storyArray: [String] = ["物語を始めよう", "おしゃべりを始めよう","背景を変えよう","登場人物をクリックしよう",
                                "自分の声を追加しよう","滑るように動かそう","場面に登場させよう","登場人物に返答させよう",
                                "場面を追加しよう"]
    
    
    // 選択されたジャンルの配列の長さ変数
    var arrayLength: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // テーブルビューにTableViewCellを登録
        secondTableView.register(UINib(nibName: "secondTableViewCell", bundle: nil),forCellReuseIdentifier: "cell_02")
        
        secondTableView.delegate = self
        secondTableView.dataSource = self
        
        // 選択されたジャンルによってセルの数を変える
        // getCellの中身が・・・
        switch getCell {
        // 0のとき
        case 0:
            arrayLength = catchArray.count
        // 1のとき
        case 1:
            arrayLength = petArray.count
        // 2のとき
        case 2:
            arrayLength = JumpingArray.count
        // 3のとき
        case 3:
            arrayLength = danceArray.count
        // 4のとき
        case 4:
            arrayLength = pingpongArray.count
        // 5のとき
        case 5:
            arrayLength = storyArray.count
        default:
            break
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // セルの数を指定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // someArrayの中身の数だけセルを表示
        return arrayLength
    }
    
    // 各セルの要素を指定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // UITableViewCellのインスタンスを生成
        let cell = secondTableView.dequeueReusableCell(withIdentifier: "cell_02", for: indexPath) as! secondTableViewCell
        
        // 選択されたジャンルによってセルの中身を変える
        // getCellの中身が・・・
        switch getCell {
        // 0のとき
        case 0:
            // セルのUILabelに配列の中身を順に表示
            cell.secondLabel.text = catchArray[indexPath.row]
        // 1のとき
        case 1:
            cell.secondLabel.text = petArray[indexPath.row]
        // 2のとき
        case 2:
            cell.secondLabel.text = JumpingArray[indexPath.row]
        // 3のとき
        case 3:
            cell.secondLabel.text = danceArray[indexPath.row]
        // 4のとき
        case 4:
            cell.secondLabel.text = pingpongArray[indexPath.row]
        // 5のとき
        case 5:
            cell.secondLabel.text = storyArray[indexPath.row]
        default:
            break
        }
        
        return cell
    }
    
    // 選択されたセルを覚える変数
    var chosenCell: Int!
    var chosenCell2: Int!
    
    // セルが選択された時に呼ばれる
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // 選択されたcellの番号を記憶
        chosenCell = getCell
        chosenCell2 = indexPath.row
        // 画面遷移の準備
        performSegue(withIdentifier: "toThirdViewController",sender: nil)
    }
    
    // Segue 準備
    override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
        // 遷移先のViecControllerのインスタンスを生成
        let secVC: thirdViewController = (segue.destination as? thirdViewController)!
        // secondViewControllerのgetCellに選択された画像を設定する
        secVC.getCell = chosenCell
        secVC.getCell2 = chosenCell2
        
    }
    
    
}
