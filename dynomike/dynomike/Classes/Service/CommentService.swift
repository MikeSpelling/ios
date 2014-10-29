//
//  CommentService.swift
//  dynomike
//
//  Created by Michael Spelling on 29/10/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

import UIKit
import Alamofire

class CommentService {
    
    func getComments(completion: ((response : Array<Comment>!) -> Void)?) {
        Alamofire.request(.GET, "http://127.0.0.1:3000/api").responseJSON { (request, response, JSON, error) in
            
            var comments = [Comment]()
            for item in JSON as NSArray {
                let com = Comment(fromJson: item as NSDictionary)
                comments.append(com)
            }
            if completion != nil {
                completion!(response: comments)
            }
        }
    }
}
