//
//  ViewController.swift
//  atsuwo210803practice9
//
//  Created by 竹辻篤志 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private weak var prefactureLabel: UILabel!

    @IBAction func tappedModal(_ sender: Any) {
        let vc = ModalViewController()

        vc.didSelectPrefecture = { [weak self] in
            self?.prefactureLabel.text = $0
            self?.dismiss(animated: true, completion: nil)
        }

        vc.didCancel = { [weak self] in
            self?.dismiss(animated: true, completion: nil)
        }

        let navi = UINavigationController(rootViewController: vc)
        navi.modalPresentationStyle = .fullScreen
        self.present(navi, animated: true, completion: nil)
    }
}
