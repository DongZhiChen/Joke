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
    var contentH:CGFloat = 0.0;
    
    let font:UIFont = UIFont.systemFont(ofSize: 13);
    
    init(dict:[String:AnyObject]) {
        
        super.init();
        
        content = dict["content"] as! String;
        
        updatetime = dict["updatetime"] as! String;
        
        contentH = self.getContentHeight(content: content as NSString);
        
    }
    
    
    func getContentHeight(content:NSString) -> CGFloat{
    
        let height = content.boundingRect(with: CGSize.init(width: ScreenSize.width-CellJokeContentLeftRightSpeace*2, height: ScreenSize.height), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName:font], context: nil).size.height;
        
        return height;
        
    }
}
