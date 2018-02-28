/*
 Copyright (c) 2015-present, salesforce.com, inc. All rights reserved.
 
 Redistribution and use of this software in source and binary forms, with or without modification,
 are permitted provided that the following conditions are met:
 * Redistributions of source code must retain the above copyright notice, this list of conditions
 and the following disclaimer.
 * Redistributions in binary form must reproduce the above copyright notice, this list of
 conditions and the following disclaimer in the documentation and/or other materials provided
 with the distribution.
 * Neither the name of salesforce.com, inc. nor the names of its contributors may be used to
 endorse or promote products derived from this software without specific prior written
 permission of salesforce.com, inc.
 
 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR
 IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
 FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR
 CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
 DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
 WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY
 WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 */

import Foundation
import UIKit
import SalesforceSDKCore
import SalesforceSwiftSDK
import PromiseKit
class RootViewController : UIViewController,UICollectionViewDelegate,UICollectionViewDataSource
    //: UITableViewController
{
     
    
    @IBOutlet weak var collectionview: UICollectionView!
    
    let imgArray:[UIImage] = [
        UIImage(named:"1")!,UIImage(named:"2")!,UIImage(named:"3")!,UIImage(named:"4")!,UIImage(named:"5")!,UIImage(named:"6")!,UIImage(named:"7")!
    ]
   
    let nameArray = ["Our Company","Our Offerings","Media","Case Studies","BeyondBusiness","New Channel","Extras" ]
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MainCollectionViewCell
     cell.imgImage.image = imgArray[indexPath.item]
        cell.lblImageName.text=nameArray[indexPath.item]
        return cell
    }
  // func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      // let mainstoryboard:UIStoryboard = UIStoryboard(name:"Main",bundle:nil)
   //    let descv =
//            mainstoryboard.instantiateViewController(withIdentifier: "MainTableViewController") as! MainTableViewController
//            descv.img = imgArray[indexPath.row]
//            descv.dat = nameArray[indexPath.row]
//            self.navigationController?.pushViewController(descv, animated: true)
//
//
//
 //}
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.barTintColor = UIColor.init(fromHexValue: "1580e7")
       
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]

        //self.title = "Sales Rocket"
     collectionview.delegate = self
       collectionview.dataSource = self

        
        let itemSize = UIScreen.main.bounds.width/2 - 2
 let layout = UICollectionViewFlowLayout()
       layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
     layout.itemSize = CGSize(width: itemSize, height: itemSize)
      layout.minimumInteritemSpacing = 2
      layout.minimumLineSpacing = 2
collectionview.collectionViewLayout = layout

       // let layout = self.collectionview.collectionViewLayout as! UICollectionViewFlowLayout
    //layout.sectionInset = UIEdgeInsetsMake(0, 0, 0, 0)
     //layout.minimumInteritemSpacing = 2
     //layout.minimumLineSpacing = 2
    
     //layout.itemSize = CGSize(width: (self.collectionview.frame.size.width-20)/3, height: self.collectionview.frame.size.height/4)
        
    }
    
   
}
    /*var dataRows = [NSDictionary]()
    
    // MARK: - View lifecycle
    override func loadView()
    {
        super.loadView()
        self.title = "Mobile SDK Sample App"
        let restApi = SFRestAPI.sharedInstance()
        restApi.Promises
        .query(soql: "SELECT Name FROM User LIMIT 10")
        .then {  request  in
            restApi.Promises.send(request: request)
        }.done { [unowned self] response in
            self.dataRows = response.asJsonDictionary()["records"] as! [NSDictionary]
            SalesforceSwiftLogger.log(type(of:self), level:.debug, message:"request:didLoadResponse: #records: \(self.dataRows.count)")
            DispatchQueue.main.async(execute: {
                self.tableView.reloadData()
            })
        }.catch { error in
             SalesforceSwiftLogger.log(type(of:self), level:.debug, message:"Error: \(error)")
        }
    }
    
    // MARK: - Table view data source
    func numberOfSectionsInTableView(tableView: UITableView) -> Int
    {
        return 1
    }
    
    override func tableView(_ tableView: UITableView?, numberOfRowsInSection section: Int) -> Int
    {
        return self.dataRows.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cellIdentifier = "CellIdentifier"
        
        // Dequeue or create a cell of the appropriate type.
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier:cellIdentifier)
        if (cell == nil)
        {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)
        }
        
        // If you want to add an image to your cell, here's how.
        let image = UIImage(named: "icon.png")
        cell!.imageView!.image = image
        
        // Configure the cell to show the data.
        let obj = dataRows[indexPath.row]
        cell!.textLabel!.text = obj["Name"] as? String
        
        // This adds the arrow to the right hand side.
        cell?.accessoryType = UITableViewCellAccessoryType.disclosureIndicator
        
        return cell!
    }
}*/
