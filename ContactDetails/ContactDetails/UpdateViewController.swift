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
    }

    @IBAction func close(){
        let emailTextFieldValue = emailTextField.text ?? "no email provided"
        let phoneTextFieldValue = phoneTextField.text ?? "no phone number provided"
        
        delegate?.didUpdateDetails(email: emailTextFieldValue, phoneNumber: phoneTextFieldValue)
        navigationController?.popViewController(animated: true)
    }
}
