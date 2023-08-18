//
//  StartModuleViewController.swift
//  PoKemonApp
//
//  Created by michaell medina on 16/08/23.
//

import UIKit


class StartModuleVC: UIViewController {
    
    var presenter: StartModulePresenterProtocol?
    
    @IBOutlet weak var pokeLogo: UIImageView!
    @IBOutlet weak var pokeSpeech: UILabel!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        presenter?.viewDidLoad()
      
        
    }
   
    
    @IBAction func goButtonPressed(_ sender: Any) {
        presenter?.goToHome()
    }
    
    
}
  
extension StartModuleVC: StartModuleViewProtocol{
    
}
