//
//  M_AmuseImage.swift
//  Joke
//
//  Created by 陈东芝 on 16/10/28.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

class M_AmuseImage: NSObject {

    var content:String = "";
    var url:String = "";
    
    init(dict:[String:AnyObject]){
    
        super.init();
        
        content = dict["content"] as! String;
        url = dict["url"] as! String;
        
    }
}
