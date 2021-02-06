//
//  BaseScreen.swift
//  DelegatePattern
//
//  Created by Ignacio Arias on 2021-02-06.
//



///Remember Delegate pattern is 1 to 1 communication


import UIKit

class BaseScreen: UIViewController {
    
    @IBOutlet weak var mainImageView: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func chooseButtonTapped(_ sender: Any) {
        
        let selectionVC = storyboard?.instantiateViewController(withIdentifier: "SelectionScreen") as! SelectionScreen
        
        selectionVC.selectionDelegate = self
        
        present(selectionVC, animated: true, completion: nil)
    }
    
    
}

extension BaseScreen: SideSelectionDelegate {
    func didTapChoice(image: UIImage, name: String, color: UIColor) {
        mainImageView.image = image
        lbl.text = name
        lbl.backgroundColor = color
    }
    
    
}
