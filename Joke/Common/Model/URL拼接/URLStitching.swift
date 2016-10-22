//
//  URLStitching.swift
//  Joke
//
//  Created by 陈东芝 on 16/10/22.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

class URLStitching: NSObject {

    
   static func URLStitchingGetCompleteString(API:String, dict:NSDictionary) ->String{
    
        var URL = API;
        
        for (key,value) in dict{
        
            URL += "\(key)=\(value)&";
            
        }
        
        print(URL);
        
        return URL;
    }
    
    
    
    
}
