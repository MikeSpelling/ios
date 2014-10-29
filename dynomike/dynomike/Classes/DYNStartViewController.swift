//
//  DYNStartViewController.swift
//  dynomike
//
//  Created by Michael Spelling on 26/10/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

import UIKit

class DYNStartViewController: UIViewController {
    
    let commentService : CommentService = CommentService()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        commentService.getComments { (response: Array<Comment>!) -> Void in
            for comment in response {
                println("\(comment.title) : \(comment.text)")
            }
        }
    }

}