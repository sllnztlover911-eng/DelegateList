//
//  ViewController.swift
//  DelegateList
//
//  Created by Асылхан Дильназ on 02.03.2026.
//

import UIKit

protocol AddItemDelegate: AnyObject {
    func didAddItem(_ item: String)
}

class ViewController: UIViewController {
    
    weak var delegate: AddItemDelegate?
    
    @IBOutlet weak var addView: UIView!
    
    @IBOutlet weak var addTextField: UITextField!
    
    @IBAction func addButtonv(_ sender: Any) {
        if let text = addTextField.text {
            delegate?.didAddItem(text)
            navigationController?.popViewController(animated: true)
        }
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

