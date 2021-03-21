//
//  CleanViewController.swift
//  CleanSwift
//
//  Created by 이원우 on 2021/03/20.
//

import UIKit

class CleanViewController: UIViewController {
    @IBOutlet weak var myLabel: UILabel!
    var controller: Controller?
    
    override func viewDidLoad(){
        super.viewDidLoad()
        setup()
    }
    func setup() {
        self.controller = MyController(useCaseInputPort: UseCaseInteractorImp(presenter: self))
    }
    
    @IBAction func onBtn() {
        controller?.onRequest()
    }
}


extension CleanViewController: UseCasePresenter {
    func output() { myLabel.text = "response!!" }
}
