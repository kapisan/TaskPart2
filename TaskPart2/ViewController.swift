//
//  ViewController.swift
//  TaskPart2
//  Users/niwashuuhei/Desktop/AppSalon/TaskPart2
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

        let result: String

        switch index {
        case 0:
            result = String(textFieldValue1 + textFieldValue2)
        case 1:
            result = String(textFieldValue1 - textFieldValue2)
        case 2:
            result = String(textFieldValue1 * textFieldValue2)
        case 3:
            if textFieldValue2 == 0 {
                result = "割る数には0以外を入力してください"
            } else {
                result = String(textFieldValue1 / textFieldValue2)
            }
        default:
            result = "選択されていません"
        }

        label.text = result
    }
}
