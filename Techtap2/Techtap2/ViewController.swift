//
//  ViewController.swift
//  Techtap2
//
//  Created by 長島啓太朗 on 2023/08/18.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    var count:Int = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        resetGame()
        
    }
    func buttonTapped(_ sender: UIButton){
        count -= 1
        label.text = "\(count)"
        print("\(sender.tag)の絵文字が押されたよ！")
        sender.removeFromSuperview()
        if count == 0{
            let alert = UIAlertController(
              title: "クリア！",
              message: "すべてのボタンがタップされたよ！",
              preferredStyle:.alert
            )
            alert.addAction(UIAlertAction(
                title: "REPLAY",
                style: .default,
                handler: { action in
                    self.resetGame()
                }
            ))
            present(alert, animated: true, completion: nil)
        }
    }
    func resetGame(){
        for i in 0..<100{
            let button = addButton(on: view)
            button.titleLabel?.font = UIFont.systemFont(ofSize: 32)
            button.setTitle("🥺", for: .normal)
            button.tag = i
            button.addAction(
                .init(handler: { action in
                    let sender = action.sender as! UIButton
                    self.buttonTapped(sender)
                }), for: .touchUpInside)
        }
        count = 100
        label.text = "\(count)"
    }


}

