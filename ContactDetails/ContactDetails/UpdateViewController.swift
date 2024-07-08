//
//  UpdateViewController.swift
//  ContactDetails
//
//  Created by Raramuri on 05/07/24.
//

import UIKit

protocol ContactDetailProtocol: AnyObject{
    func didUpdateDetails(email: String, phoneNumber: String)
}

class UpdateViewController: UIViewController{
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    weak var delegate: ContactDetailProtocol?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.


    }
    
    
    
    
    
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func close(){
        let emailTextFieldValue = emailTextField.text ?? "no email provided"
        let phoneTextFieldValue = phoneTextField.text ?? "no phone number provided"
        
        print("email is \(emailTextFieldValue)")
        print("phone number is \(phoneTextFieldValue)")
        
        delegate?.didUpdateDetails(email: emailTextFieldValue, phoneNumber: phoneTextFieldValue)
        navigationController?.popViewController(animated: true)
    }

}
