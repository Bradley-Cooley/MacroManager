//
//  wikiViewController.swift
//  MacroManager
//
//  Created by spencer on 1/11/17.
//  Copyright © 2017 Aaron Edwards. All rights reserved.
//

import UIKit

class wikiViewController: UIViewController {

    @IBOutlet weak var wikiPage: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAddressURL()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func loadAddressURL()
    {
        wikiPage.loadRequest(URLRequest(url: URL(string: "https://en.wikipedia.org/wiki/Nutrient")!))
    }

}
