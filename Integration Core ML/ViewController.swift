//
//  ViewController.swift
//  Integration Core ML
//
//  Created by Евгений Карась on 10.01.23.
//

import UIKit

class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
    
     let buttonSelectImage = UIButton()

    @IBOutlet weak var img: UIImageView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
//        self.buttonSelectImage.frame = CGRect(x: 100, y: 100, width: 200, height: 100)
//        self.buttonSelectImage.backgroundColor = UIColor.orange
//        self.buttonSelectImage.setTitle("Select image", for: .normal)
//        self.buttonSelectImage.setTitle("Select image", for: .highlighted)
//        self.view.addSubview(buttonSelectImage)
//        
//        self.buttonSelectImage.addTarget(self, action: #selector(btnSelectImage2(target:)), for: .valueChanged)
        
 
    }

    @IBAction func btnSelectImage(_ sender: UIButton) {
        let imageController = UIImagePickerController()
        
        imageController.delegate = self
        imageController.sourceType = .photoLibrary
        
        self.present(imageController, animated: true, completion: nil)
        
    }
//    @objc func btnSelectImage2( target: UIButton) {
//        let imageController = UIImagePickerController()
//
//        imageController.delegate = self
//        imageController.sourceType = .photoLibrary
//
//        self.present(imageController, animated: true, completion: nil)
//
//    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = info[.originalImage] as!UIImage
        
        self.dismiss(animated: true)
    }
    
    @IBAction func btnApplyDeeplabV3(_ sender: UIButton) {
    }
    

    
}

