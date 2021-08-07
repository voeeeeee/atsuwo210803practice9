//
//  ViewController.swift
//  atsuwo210803practice9
//
//  Created by 竹辻篤志 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prefactureLabel: UILabel!
    let vc = ModalViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        vc.didTapHandler1 = { [weak self] in
            self?.prefactureLabel.text = "東京都"
        }
        vc.didTapHandler2 = { [weak self] in
            self?.prefactureLabel.text = "千葉県"
        }
        vc.didTapHandler3 = { [weak self] in
            self?.prefactureLabel.text = "神奈川県"
        }
        vc.didTapHandler4 = { [weak self] in
            self?.prefactureLabel.text = "埼玉県"
        }
    }

    @IBAction func tappedModal(_ sender: Any) {
        let navi = UINavigationController(rootViewController: vc)
        navi.modalPresentationStyle = .fullScreen
        self.present(navi, animated: true, completion: nil)
    }
}

