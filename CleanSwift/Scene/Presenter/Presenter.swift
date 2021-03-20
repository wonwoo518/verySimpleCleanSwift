//
//  Presenter.swift
//  CleanSwift
//
//  Created by 이원우 on 2021/03/20.
//

import UIKit

protocol UseCasePresenter {
    func output()
}

extension UILabel: UseCasePresenter {
    func output() { text = "response!!" }
}
