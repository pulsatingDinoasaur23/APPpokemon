//
//  HomeModuleVC.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import UIKit

protocol HomeModuleViewDelegate: AnyObject {
}


class HomeModuleVC: BaseViewController {
    
    var delegate: HomeModuleViewDelegate?
    var presenter: HomeModulePresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}
extension HomeModuleVC: HomeModuleViewProtocol{
    
}
