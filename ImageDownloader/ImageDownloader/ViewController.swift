//
//  ViewController.swift
//  ImageDownloader
//
//  Created by Master on 27/03/2020.
//  Copyright © 2020 Master. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var avatar: UIImageView!
    
    
    @IBAction func getImage(_ sender: Any) {
        URLSession.shared.downloadTask(with: URL(string: "https://picsum.photos/200"
                   )!) { (url, response, error) in
                       let data = try? Data(contentsOf: url!)
                       let image = UIImage(data: data!)
                       DispatchQueue.main.async {
                           self.avatar.image=image
                       }
               }.resume()
    }
}
