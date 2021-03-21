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
    var outputPort: UseCaseOuputPort {get}
}

class UseCaseInteractorImp: UseCaseInteractor {
    var outputPort: UseCaseOuputPort
    init(outputPort: UseCaseOuputPort){ self.outputPort = outputPort }
}
extension UseCaseInteractorImp: UseCaseInputPort {
    func input() {
        print("usecase input")
        outputPort.output()
    }
}
