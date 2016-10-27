//
//  CellAmuseImage.swift
//  Joke
//
//  Created by 陈东芝 on 16/10/26.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

let CellAmuseImageID:String = "CellAmuseImage";
let CellAmuseImageLeftSepace:CGFloat = 5.0;
let CellAmuseImageSize:CGSize = CGSize.init(width: (ScreenSize.width-CellAmuseImageLeftSepace*2), height: 200);

class CellAmuseImage: UICollectionViewCell {

    @IBOutlet weak var IV_AmuseImage: UIImageView!
    @IBOutlet weak var LB_Content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
