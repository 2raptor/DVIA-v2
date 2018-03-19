//
//  ExcessivePermissionsViewController.swift
//  DVIA-v2
//
//  Created by Prateek Gianchandani on 15/03/18.
//  Copyright © 2018 HighAltitudeHacks. All rights reserved.
//

import UIKit
import AVFoundation

class ExcessivePermissionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func menuTapped(_ sender: Any) {
        mainViewController?.toogle()
    }
    
    @IBAction func cameraPermissionTapped(_ sender: Any) {
        AVCaptureDevice.requestAccess(for: AVMediaType.video) { response in
            if response {
                DispatchQueue.main.async {
                    self.performSegue(withIdentifier: "showCameraView", sender: self)
                }
            } else {
                print("Camera Permission was not granted")
            }
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
