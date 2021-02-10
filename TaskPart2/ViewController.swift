//
//  ViewController.swift
//  TaskPart2
//Users/niwashuuhei/Desktop/AppSalon/TaskPart2
//
//  Created by niwa  shuhei on 2021/02/06.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segementedControl: UISegmentedControl!
    @IBOutlet private weak var label: UILabel!

    @IBAction private func buttonAction(_ sender: AnyObject) {
        let textFieldValue1 = Int(textField1.text!) ?? 0
        let textFieldValue2 = Int(textField2.text!) ?? 0
        let index = segementedControl.selectedSegmentIndex

        switch index {
        case 0:
            let total = textFieldValue1 + textFieldValue2
            label.text = String(total)

        case 1:
            let total = textFieldValue1 - textFieldValue2
            label.text = String(total)

        case 2:
            let total = textFieldValue1 * textFieldValue2
            label.text = String(total)

        case 3:
            if textFieldValue2 == 0 {
                label.text = "割る数には0以外を入力してください"
            } else {
                let total = textFieldValue1 / textFieldValue2
                label.text = String(total)
            }

        default:
            print("選択されていません")
        }
    }
}
