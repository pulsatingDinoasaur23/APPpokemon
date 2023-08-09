//
//  StartViewController.swift
//  PoKemonApp
//
//  Created by michaell medina on 09/08/23.
//

import UIKit

class StartViewController: BaseViewController {
    
    @IBOutlet weak var pokeSpeech: UILabel!
    @IBOutlet var pokeWelcome: UIView!
    @IBOutlet var pokeGo: UIView!
    
    var presenter: StartPresenterInputProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad()
        
    }
}

extension StartViewController: StartViewProtocol {
        
    }
