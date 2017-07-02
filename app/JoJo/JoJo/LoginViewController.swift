//
//  ViewController.swift
//  JoJo
//
//  Created by Ezequiel on 02/07/17.
//  Copyright © 2017 Ezequiel. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var addCardButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTargetsButtons()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setupTargetsButtons() {
        self.addCardButton.addTarget(self, action: #selector(ViewController.addButtonTapped), for: .touchUpInside)
    }
    
    @objc fileprivate func addButtonTapped() {
        let cardVC = Storyboards.Main.instantiateCardViewController()
        self.present(cardVC, animated: true, completion: nil)
    }
    
}

