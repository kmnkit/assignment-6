//
//  ViewController.swift
//  assignment-6
//
//  Created by Sungwoong Kang on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var slider: UISlider!
    
    private var randomNumber: Int = 0
    
    @IBOutlet weak var randomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetControllers()
    }
    
    private func showMessage(message: String){
        let alertController: UIAlertController = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: nil))
        present(alertController, animated: true)
    }
    
    private func resetControllers() {
        randomNumber = Int(arc4random_uniform(100) + 1)
        randomNumberLabel.text = "\(randomNumber)"
        slider.value = 50
    }

    @IBAction func tapJudgeButton(_ sender: UIButton) {
        let sliderValue: Int = Int(floor(slider.value))
        print(sliderValue)
        if randomNumber == sliderValue {
            showMessage(message: "あたり！\nあなたの値: \(sliderValue)")
        } else {
            showMessage(message: "はずれ！")
        }
        resetControllers()
    }
}

