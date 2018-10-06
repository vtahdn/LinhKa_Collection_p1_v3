//
//  HomeViewController.swift
//  LinhKa_Collection_p1_v3
//
//  Created by macbook on 10/6/18.
//  Copyright © 2018 Viet. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDataSource {

    var items = [Item]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        initData()
        
    }
    
    func initData() -> Void {
        var list = NSDictionary()
        if let path = NSBundle.mainBundle().pathForResource("items", ofType: "plist") {
            list = NSDictionary(contentsOfFile: path)!
        }
        for value in list.allValues {
            let name = value["name"] as! String
            let content = value["content"] as! String
            let images = value["images"] as! [String]
            let code = value["code"] as! String
            items.append(Item(name: name, content: content, images: images, code: code))
        }
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell", forIndexPath: indexPath)
        let name = items[indexPath.item].images[0] + ".jpg"
        let imageView = UIImageView(image: UIImage(named: name))
        imageView.frame = CGRectMake(0, 0, 100, 100)
        imageView.contentMode = .ScaleAspectFill
        cell.addSubview(imageView)
        cell.contentView.addSubview(imageView)
        return cell
    }
}
