//
//  ViewController.swift
//  PhotoApp
//
//  Created by Steven Hernandez on 6/4/16.
//  Copyright © 2016 Steven Hernandez. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var OpenCameraButton: UIButton!
    @IBOutlet weak var ImagePreview: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func OpenCameraAction(sender: UIButton) {
        let camera = UIImagePickerController();
        camera.delegate = self;
        camera.sourceType = .Camera
        
        presentViewController(camera, animated: true, completion: nil)
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        ImagePreview.image = info[UIImagePickerControllerOriginalImage] as? UIImage;
        dismissViewControllerAnimated(true, completion: nil)
    }

}

