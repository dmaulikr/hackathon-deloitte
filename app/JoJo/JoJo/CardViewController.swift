//
//  CardViewController.swift
//  JoJo
//
//  Created by Ezequiel on 02/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class CardViewController: CardIOPaymentViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        CardIOUtilities.preloadCardIO()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


extension CardViewController : CardIOPaymentViewControllerDelegate {
    
    func userDidCancel(_ paymentViewController: CardIOPaymentViewController!) {
        
    }
    
    func userDidProvide(_ cardInfo: CardIOCreditCardInfo!, in paymentViewController: CardIOPaymentViewController!) {
        
    }
    
    
}
