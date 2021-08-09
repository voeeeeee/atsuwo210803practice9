//
//  ModalViewController.swift
//  atsuwo210803practice9
//
//  Created by 竹辻篤志 on 2021/08/04.
//

import UIKit
import RxSwift
import RxCocoa

class ModalViewController: UIViewController {
    
    private var disposeBag = DisposeBag()

    var didSelectPrefecture: (String) -> Void = { _ in }

    var didCancel: () -> Void = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let closeButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        self.navigationItem.setLeftBarButton(closeButton, animated: true)
        closeButton.rx.tap.subscribe(
            onNext: { [weak self] in
                self?.didCancel()
            }
        ).disposed(by: disposeBag)
    }
    
    @IBAction func tappedButton1(_ sender: Any) {
        didSelectPrefecture("東京都")
    }
    
    @IBAction func tappedButton2(_ sender: Any) {
        didSelectPrefecture("千葉県")
    }
    
    @IBAction func tappedButton3(_ sender: Any) {
        didSelectPrefecture("神奈川県")
    }
    
    @IBAction func tappedButton4(_ sender: Any) {
        didSelectPrefecture("埼玉県")
    }
}
