//
//  ViewController.swift
//  testCollectionView
//
//  Created by 胡秋实 on 19/10/2015.
//  Copyright © 2015 William Hu. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("sss")
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("coffee_brand_cell", forIndexPath: indexPath) //as! AURCoffeeBrandCollectionViewCell
        let imageView = cell.contentView.viewWithTag(2) as? UIImageView
        
        imageView?.image = UIImage(named: ["coffee1","coffee2","coffee3","coffee3"][indexPath.row])
        let name = cell.viewWithTag(3) as? UILabel
        name?.text = "nihao"
        
        name?.textColor = UIColor(red: 226.0/255.0, green: 170.0/255.0, blue: 119.0/255.0, alpha: 1.0)
        name?.adjustsFontSizeToFitWidth = true
        cell.backgroundColor = collectionView.backgroundColor
        cell.layoutIfNeeded()
        imageView?.layer.cornerRadius = (cell.frame.width - 40)/2.0
        imageView?.layer.masksToBounds = true
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let cell = collectionView.cellForItemAtIndexPath(indexPath)
        print(" selected cell is \((cell?.viewWithTag(3) as! UILabel).text!)")
        print(" selected cell is \((cell?.contentView.viewWithTag(3) as! UILabel).text!)")
        
        
//        ss 
    }

}

