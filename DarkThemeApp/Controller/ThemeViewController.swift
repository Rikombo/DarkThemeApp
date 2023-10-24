//
//  ThemeViewController.swift
//  DarkThemeApp
//
//  Created by valentins.stepanovs on 24/10/2023.
//

import UIKit

#warning("need to have IBOutlet for Item button and put on leading side")
#warning("Dark Theme off : Dark Theme on")
#warning("need to have IBAction for Item button and logic to present actionSheet")

class ThemeViewController: UIViewController {
    @IBOutlet weak var darkButton: UIButton!
    
    @IBOutlet weak var folderButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("func viewDidLoad")
        darkButton.layer.cornerRadius = 10
    }
    
    
    @IBAction func darkButtonTapped(_ sender: Any) {
        print("darkButtonTapped")
        view.backgroundColor = UIColor.black
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        darkButton.setTitle("DisableDarkTheme", for: .normal)
        darkButton.setTitleColor(UIColor.black, for: .normal)
        darkButton.tintColor = UIColor.white
        
    }
    @IBAction func folderButtonTapped(_ sender: Any) {
        basicAlert(title: "My folder", message: "This is my item button!")
    }
    

    
}

extension UIViewController {
    func basicAlert(title: String?, message: String?) {
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            self.present(alert, animated: true)
        }
    }
}

