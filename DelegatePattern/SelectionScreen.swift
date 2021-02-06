//
//  ViewController.swift
//  DelegatePattern
//
//  Created by Ignacio Arias on 2021-02-06.
//

import UIKit

protocol SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor)
}

class SelectionScreen: UIViewController {
    
    var selectionDelegate: SideSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

    @IBAction func buttonTapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(imageLiteralResourceName: "goku"), name: "goku", color: .yellow)
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func goku4Tapped(_ sender: Any) {
        selectionDelegate.didTapChoice(image: UIImage(imageLiteralResourceName: "goku4"), name: "Goku 4", color: .red)
        
        dismiss(animated: true, completion: nil)
    }
    
}

