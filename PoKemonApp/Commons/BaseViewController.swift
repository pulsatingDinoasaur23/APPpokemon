//
//  BaseViewController.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import Foundation
import UIKit

class BaseViewController: UIViewController {
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.isNavigationBarHidden = true
    }
}
