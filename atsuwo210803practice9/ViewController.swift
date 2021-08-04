//
//  ViewController.swift
//  atsuwo210803practice9
//
//  Created by 竹辻篤志 on 2021/08/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var prefactureLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction func tappedModal(_ sender: Any) {
        let vc = ModalViewController()
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
        print("aa")
    }

}

