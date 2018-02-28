//
//  TabBarController.swift
//  SalesRocket
//
//  Created by Harish on 27/02/18.
//  Copyright © 2018 Salesforce. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    @IBOutlet weak var tabBarcontroller: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.unselectedItemTintColor = UIColor.white
        self.tabBar.tintColor = UIColor.white
        self.tabBar.barTintColor = UIColor.init(fromHexValue: "1580e7")
      


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

}
