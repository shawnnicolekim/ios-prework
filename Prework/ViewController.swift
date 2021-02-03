//
//  ViewController.swift
//  Prework
//
//  Created by Shawn Kim on 2/2/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!;
    @IBOutlet weak var textField: UITextField!
    
    var backgroundColor: UIColor!;
    var textColor: UIColor!;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        backgroundColor = view.backgroundColor;
        textColor = textLabel.textColor;
    }

    // change label's text color to green
    @IBAction func didTapButton(_ sender: Any) {
        textLabel.textColor = UIColor.green;
    }
    
    // change entire view's background to gray
    @IBAction func didTapViewButton(_ sender: Any) {
        view.backgroundColor = UIColor.gray;
    }
    
    // change label's text depending on user input
    @IBAction func didTapTextButton(_ sender: Any) {
        textLabel.text = textField.text;
        textField.text = "";
        view.endEditing(true);
    }
    
    // change label's text to "Goodbye!"
    @IBAction func didTapGoodbyeTextButton(_ sender: Any) {
        textLabel.text = "Goodbye!";
    }
    
    @IBAction func onResetGesture(_ sender: Any) {
        textLabel.text = "Hello from Shawn!"
        // if user is typing but doesn't press "Change Text" and pressed the View, it should erase the text field's text
        textField.text = "";
        view.backgroundColor = backgroundColor;
        textLabel.textColor = textColor;
    }
    
}

