//
//  CollectionViewController.swift
//  Meme Me
//
//  Created by Ankit Garg on 16/05/15.
//  Copyright (c) 2015 Ankit Garg. All rights reserved.
//

import Foundation
import UIKit

class CollectionViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var memes:[Meme]!
    
    override func viewDidLoad() {
        memes = (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return memes.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionViewCellIdentifier", forIndexPath: indexPath) as! CollectionViewCell
        
        cell.memedImage.image = memes[indexPath.row].memedImage
        cell.label.text = memes[indexPath.row].topText
        
        return cell
    }
}
