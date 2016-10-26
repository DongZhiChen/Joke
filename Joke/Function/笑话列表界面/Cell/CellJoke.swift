//
//  CellJoke.swift
//  JokeApp
//
//  Created by 陈东芝 on 16/10/16.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

let CellJokeContentLeftRightSpeace:CGFloat = 20.0;
let CellJokeContentTopBottomSpeace:CGFloat = 10.0;

let CellJokeOtherH:CGFloat = 40.0;

class CellJoke: UITableViewCell {

    @IBOutlet weak var LB_Content: UILabel!
    
    @IBOutlet weak var LB_UpdateTime: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
                
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    func setCellJokeDataWithData(jokeData:M_JokeData){
    
        self.LB_UpdateTime.text = "更新时间："+jokeData.updatetime;
        self.LB_Content.text = jokeData.content;
        var frame:CGRect = self.LB_Content.frame;
        frame.size.height = jokeData.contentH;
        self.LB_Content.frame = frame;
        self.LB_Content.font = jokeData.font;
        
    }
    
}
