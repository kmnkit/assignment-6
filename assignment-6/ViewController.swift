//
//  ViewController.swift
//  assignment-6
//
//  Created by Sungwoong Kang on 2022/01/28.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var slider: UISlider!
    
    private var randomNumber = 0
    
    @IBOutlet private weak var randomNumberLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resetControllers()
    }
    
    private func showMessage(message: String){
        let alertController = UIAlertController(title: "結果", message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "再挑戦", style: .default, handler: nil))
        present(alertController, animated: true)
    }
    
    private func resetControllers() {
        randomNumber = Int.random(in: 1...100)
        randomNumberLabel.text = "\(randomNumber)"
        slider.value = 50
    }

    @IBAction func tapJudgeButton(_ sender: UIButton) {
        let sliderValue = Int(floor(slider.value))

        let firstLine: String
        if randomNumber == sliderValue {
            firstLine = "あたり！"
        } else {
            firstLine = "はずれ！"
        }
        
        showMessage(message: "\(firstLine)\nあなたの値: \(sliderValue)")
        resetControllers()
    }
}

