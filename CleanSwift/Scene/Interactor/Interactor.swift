//
//  Interactor.swift
//  CleanSwift
//
//  Created by 이원우 on 2021/03/20.
//

import Foundation

protocol UseCaseInputPort {
    func input()
}

protocol UseCaseInteractor: UseCaseInputPort{
    var presenter: UseCasePresenter {get}
}

class UseCaseInteractorImp: UseCaseInteractor {
    var presenter: UseCasePresenter
    init(presenter: UseCasePresenter){ self.presenter = presenter }
}
extension UseCaseInteractorImp: UseCaseInputPort {
    func input() {
        print("usecase input")
        presenter.output()
    }
}
