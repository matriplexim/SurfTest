//
//  Presenter.swift
//  SurfTest
//
//  Created by Максим Ломакин on 08.02.2023.
//

import Foundation
import UIKit

class Presenter {
    
    var model = Model()
    var currentButton: CustomButton? = nil
    var currentCell: CustomCell? = nil
    
    func fetchData() -> [CategoryItem] {
        return model.arrayOfCategoryItems
    }
   
    func showAlert(sender: UIViewController, title: String, message: String?) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let action = UIAlertAction(title: "Закрыть", style: .default)
        alert.addAction(action)
        sender.present(alert, animated: true)
    }
    
    func selectedItem(cell: CustomCell) {
        if currentCell != nil && currentCell == cell{
            cell.backgroundColor = UIColor(named: "buttonColorDis")
            cell.label.textColor = UIColor(named: "buttonColor")
            currentCell = nil
        } else if currentCell != nil && currentCell != cell{
            currentCell?.backgroundColor = UIColor(named: "buttonColorDis")
            currentCell?.label.textColor = UIColor(named: "buttonColor")
            cell.backgroundColor = UIColor(named: "buttonColor")
            cell.label.textColor = .white
            currentCell = cell
        } else {
            cell.backgroundColor = UIColor(named: "buttonColor")
            cell.label.textColor = .white
            currentCell = cell
        }
    }
    
    func tappedButton(index: Int, sender: ViewController) {
        switch index {
        case 0:
            if currentButton == sender.iOSButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.iOSButton.backgroundColor = UIColor(named: "buttonColor")
                sender.iOSButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.iOSButton
                } else {
                    currentButton = sender.iOSButton
                }
            }
        case 1:
            if currentButton == sender.androidButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.androidButton.backgroundColor = UIColor(named: "buttonColor")
                sender.androidButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.androidButton
                } else {
                    currentButton = sender.androidButton
                }
            }
        case 2:
            if currentButton == sender.designButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.designButton.backgroundColor = UIColor(named: "buttonColor")
                sender.designButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.designButton
                } else {
                    currentButton = sender.designButton
                }
            }
        case 3:
            if currentButton == sender.flutterButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.flutterButton.backgroundColor = UIColor(named: "buttonColor")
                sender.flutterButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.flutterButton
                } else {
                    currentButton = sender.flutterButton
                }
            }
        case 5:
            if currentButton == sender.QAButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.QAButton.backgroundColor = UIColor(named: "buttonColor")
                sender.QAButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.QAButton
                } else {
                    currentButton = sender.QAButton
                }
            }
        case 4:
            if currentButton == sender.PMButton {
                currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                currentButton = nil
            } else {
                sender.PMButton.backgroundColor = UIColor(named: "buttonColor")
                sender.PMButton.setTitleColor(.white, for: .normal)
                if currentButton != nil {
                    currentButton?.backgroundColor = UIColor(named: "buttonColorDis")
                    currentButton?.setTitleColor(UIColor(named: "buttonColor"), for: .normal)
                    currentButton = sender.PMButton
                } else {
                    currentButton = sender.PMButton
                }
            }
        default:
            break
        }
    }
}
