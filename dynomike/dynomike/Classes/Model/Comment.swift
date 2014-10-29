//
//  Comment.swift
//  dynomike
//
//  Created by Michael Spelling on 29/10/2014.
//  Copyright (c) 2014 Michael Atkins-Spelling. All rights reserved.
//

import UIKit

class Comment: NSObject {
    
    var title : String = ""
    var text : String = ""

    init(fromJson json: NSDictionary) {
        title = json["title"] as String
        text = json["text"] as String
    }
   
}
