

import UIKit

class NewNoteViewController: UIViewController {
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var deathDate: UIDatePicker! {
        didSet {
            deathDate.minimumDate = Date()
        }
    }
    @IBOutlet weak var deathDescription: UITextView!

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "addCanceled" {
            print("Add Canceled")
        }
        else if segue.identifier == "addConfirm" {
            print("Add Confirmed")
        }
        else {
            print("Noob")
        }
    }

    @IBAction func addButton(_ sender: UIBarButtonItem) {
        if let name = nameText.text, let description = deathDescription.text {
            let formatter = DateFormatter()
            formatter.dateFormat = "dd/MM/yyyy HH:mm"
            let formattedDate = formatter.string(from: deathDate.date)
            print("Name: '\(name)'")
            print("Date: '\(formattedDate)'")
            print("Description: '\(description)'");
            if name.isEmpty {
                print("Empty Name")
            }
            else {
                Notes.allNotes.append((name: name, date: formattedDate, cause: description))
            }
            performSegue(withIdentifier: "addConfirm", sender: "Foo")
        }
        else {
            print("No text elems")
        }
    }
    
    // --- BEGIN keyboard handling
    override func viewDidLoad() {
        // Add borders to deathDescription
        let borderColor : UIColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        deathDescription.layer.borderWidth = 1
        deathDescription.layer.borderColor = borderColor.cgColor
        
        // Close keyboard when click on empty space
        let tap = UITapGestureRecognizer(target: self.view, action: #selector(UIView.endEditing(_:)))
        tap.cancelsTouchesInView = false
        self.view.addGestureRecognizer(tap)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name:UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name:UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    @objc func keyboardWillShow(notification:NSNotification){
        
        var userInfo = notification.userInfo!
        var keyboardFrame:CGRect = (userInfo[UIResponder.keyboardFrameBeginUserInfoKey] as! NSValue).cgRectValue
        keyboardFrame = self.view.convert(keyboardFrame, from: nil)
        
        var contentInset:UIEdgeInsets = self.scrollView.contentInset
        contentInset.bottom = keyboardFrame.size.height + 10
        scrollView.contentInset = contentInset
    }
    
    @objc func keyboardWillHide(notification:NSNotification){
        
        let contentInset:UIEdgeInsets = UIEdgeInsets.zero
        scrollView.contentInset = contentInset
    }
    // --- END keyboard handling
    
}

