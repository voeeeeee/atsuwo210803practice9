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
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen

        self.present(nav, animated: true, completion: nil)

        print("aa")
    }

}

