//
//  M_JokeData.swift
//  Joke
//
//  Created by 陈东芝 on 16/10/23.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

class M_JokeData: NSObject {

    var content:String = "";
    var updatetime:String = "";
    
    init(dict:[String:AnyObject]) {
        
        super.init();
        
        content = dict["content"] as! String
        
        updatetime = dict["updatetime"] as! String
        
    }
}
