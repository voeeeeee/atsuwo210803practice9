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
}
