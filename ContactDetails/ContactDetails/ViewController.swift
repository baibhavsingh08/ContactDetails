//
//  ViewController.swift
//  ContactDetails
//
//  Created by Raramuri on 05/07/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//    override func viewDidLayoutSubviews(){
//        super.viewDidLayoutSubviews()
//        image.backgroundColor = .black
//        image.layer.cornerRadius = image.frame.size.width / 2
//        image.clipsToBounds = true
//    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        image.backgroundColor = .white
        image.layer.cornerRadius = image.frame.size.height/2
        image.clipsToBounds = true
        
    }


}

