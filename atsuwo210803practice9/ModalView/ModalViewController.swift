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
    
    var disposeBag = DisposeBag()
    var didTapHandler1: () -> Void = {}
    var didTapHandler2: () -> Void = {}
    var didTapHandler3: () -> Void = {}
    var didTapHandler4: () -> Void = {}
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let closeButton = UIBarButtonItem(barButtonSystemItem: .cancel, target: self, action: nil)
        self.navigationItem.setLeftBarButton(closeButton, animated: true)
        let closeButtonObservable = closeButton.rx.tap.asObservable()
        closeButtonObservable.subscribe(
            onNext: { [weak self] in
                self?.dismiss(animated: true, completion: nil)
            }
        ).disposed(by: disposeBag)
    }
    
    @IBAction func tappedButton1(_ sender: Any) {
        didTapHandler1()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedButton2(_ sender: Any) {
        didTapHandler2()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedButton3(_ sender: Any) {
        didTapHandler3()
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func tappedButton4(_ sender: Any) {
        didTapHandler4()
        self.dismiss(animated: true, completion: nil)
    }
}
