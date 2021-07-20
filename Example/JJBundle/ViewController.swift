//
//  ViewController.swift
//  JJBundle
//
//  Created by JJingLee on 07/20/2021.
//  Copyright (c) 2021 JJingLee. All rights reserved.
//

import UIKit
import JJBundle

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testJS = Bundle.myBundle?.main?.fetchJSScript(with: "test")
        print("\(testJS)")
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

extension Bundle {
    static var myBundle : JJBundleDSL? {
        return JJBundleDSL(mainBundleName: "JJBundle", anyClassNameInSameBundle: "JJBundle.JJBundleDSL")
    }
}
