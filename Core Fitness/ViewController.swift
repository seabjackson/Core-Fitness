//
//  ViewController.swift
//  Core Fitness
//
//  Created by Seab Jackson on 9/20/20.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        getClasses()
        
    }
    
    func getClasses() {
        let url = URL(string: "https://core-class-search.herokuapp.com/classes")!
        let client = URLSessionHTTPClient()
        let loader = RemoteClassLoader(url: url, client: client)
        loader.load { result in
            print(result)
        }
        
        
    }


}

