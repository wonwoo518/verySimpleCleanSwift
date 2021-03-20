//
//  Controller.swift
//  CleanSwift
//
//  Created by 이원우 on 2021/03/20.
//

import Foundation

protocol Controller {
    var useCaseInputPort: UseCaseInputPort {get}
    func onRequest()
}

class MyController: Controller {
    var useCaseInputPort: UseCaseInputPort
    init(useCaseInputPort: UseCaseInputPort) { self.useCaseInputPort = useCaseInputPort }
    func onRequest() {
        useCaseInputPort.input()
    }
}
