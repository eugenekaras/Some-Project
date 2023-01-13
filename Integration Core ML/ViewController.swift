//
//  ViewController.swift
//  Integration Core ML
//
//  Created by Евгений Карась on 10.01.23.
//

import UIKit
import Combine


//struct BlogPost {
//    let title: String
//    let url: URL
//}
//extension Notification.Name {
//    static let newBlogPost = Notification.Name("newBlogPost")
//}


class ViewController: UIViewController,UINavigationControllerDelegate,UIImagePickerControllerDelegate {
 

    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var btnApplyDeeplabV3: UIButton!
    
    @Published var canApplyDeeplabV3: Bool = false
    
    private var subscriptions = Set<AnyCancellable>()
 
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        $canApplyDeeplabV3.receive(on: DispatchQueue.main).assign(to: \.isEnabled, on: btnApplyDeeplabV3)
        
        subscriptions = [
            $canApplyDeeplabV3.assign(to: \.isEnabled, on: btnApplyDeeplabV3)
        ]
        
    }
    
    private func setupCombine() {
//        let blogPostPublisher = NotificationCenter.Publisher(center: .default, name: .newBlogPost)
//        let postLabelSubscriber = Sub
    }

    @IBAction func btnSelectImage(_ sender: UIButton) {
        let imageController = UIImagePickerController()
        
        imageController.delegate = self
        imageController.sourceType = .photoLibrary
        
        self.present(imageController, animated: true, completion: nil)
  
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        img.image = info[.originalImage] as?UIImage
        
        canApplyDeeplabV3 = (img.image != nil)

        self.dismiss(animated: true)
  
    }
    
 
 
    @IBAction func btnApplyDeeplabV3Tapped(_ sender: UIButton) {
        print("okkkk")
    }
    
    
}

