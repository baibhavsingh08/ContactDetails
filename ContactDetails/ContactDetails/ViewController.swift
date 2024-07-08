import UIKit

extension ViewController: ContactDetailProtocol{
    func didUpdateDetails(email: String, phoneNumber: String) {
        emailLabel.text = email
        phoneLabel.text = phoneNumber
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        image.backgroundColor = .white
        image.layer.cornerRadius = image.frame.size.height/2
        image.clipsToBounds = true
    }
    
    @IBAction func saveDetails(_ sender: UIButton){
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "second") as? UpdateViewController
        vc?.delegate = self
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
