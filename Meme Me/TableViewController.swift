//
//  TableViewController.swift
//  Meme Me
//
//  Created by Ankit Garg on 15/05/15.
//  Copyright (c) 2015 Ankit Garg. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var memes:[Meme]!

    override func viewDidLoad() {
        super.viewDidLoad()
        memes = (UIApplication.sharedApplication().delegate as! AppDelegate).memes
        println("memes did load")
        
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("TableViewCellIdentifier") as! UITableViewCell
        
        cell.imageView?.image = self.memes[indexPath.row].memedImage
        cell.detailTextLabel?.text = self.memes[indexPath.row].topText
        
        return cell
    }

    @IBAction func makeNewMeme(sender: AnyObject) {
    }

}

