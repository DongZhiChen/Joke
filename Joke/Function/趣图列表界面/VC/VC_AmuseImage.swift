//
//  VC_AmuseImage.swift
//  Joke
//
//  Created by 陈东芝 on 16/10/26.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class VC_AmuseImage: UIViewController,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {

    var CV_AmuseList:UICollectionView?;
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let CVLayout:UICollectionViewFlowLayout = UICollectionViewFlowLayout.init()
        ;
        self.CV_AmuseList = UICollectionView.init(frame: self.view.bounds, collectionViewLayout: CVLayout);
        self.CV_AmuseList?.delegate = self;
        self.CV_AmuseList?.dataSource = self;
        self.CV_AmuseList?.backgroundColor = UIColor.white;
        self.CV_AmuseList?.register(UINib.init(nibName: "CellAmuseImage", bundle: Bundle.main), forCellWithReuseIdentifier: CellAmuseImageID);
        self.view .addSubview(self.CV_AmuseList!);
        
        var dict=Dictionary<String,String>() ;
        dict["page"] = "1";
        dict["pagesize"] = "20";
        
        let URL =  URLStitching.URLStitchingGetCompleteString(API: API_SearchAmuseImage, dict: dict as NSDictionary);
        
        Alamofire.request(URL).responseJSON { response in
            
            
            let json = JSON(response.result.value);
        
            let data = json["result"]["data"];
            
//            for (_,subJson):(String, JSON) in data{
//                
//                
//                //let jokeData:M_JokeData = M_JokeData.init(dict: subJson.dictionaryObject as! [String : AnyObject]);
//                //self.arrayJokeData.append(jokeData)
//                
//            }
            
            self.CV_AmuseList?.reloadData();
        }
        
        
        
    }

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10;
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : CellAmuseImage = collectionView.dequeueReusableCell(withReuseIdentifier: CellAmuseImageID, for: indexPath) as! CellAmuseImage;
        
        return cell;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
     return   CellAmuseImageSize;
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets{
    
        return UIEdgeInsets.init(top: 0, left: CellAmuseImageLeftSepace, bottom: 0, right: CellAmuseImageLeftSepace);
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

  }
