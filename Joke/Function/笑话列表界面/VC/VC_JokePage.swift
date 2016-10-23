//
//  VC_JokePage.swift
//  JokeApp
//
//  Created by 陈东芝 on 16/10/16.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class VC_JokePage: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var  TB_JokeList  : UITableView?
    
     let CellID:String = "CellJoke"
    let CellH = 60.0
    var arrayJokeData = [AnyObject]();
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        TB_JokeList = UITableView.init(frame: self.view.bounds, style:.plain);
        TB_JokeList?.delegate = self;
        TB_JokeList?.dataSource = self;
        TB_JokeList?.register(UINib.init(nibName: "CellJoke", bundle: Bundle.main), forCellReuseIdentifier: CellID)

        var dict=Dictionary<String,String>() ;
        dict["page"] = "1";
        dict["pagesize"] = "20";
        
      let URL =  URLStitching.URLStitchingGetCompleteString(API: API_SearchJoke, dict: dict as NSDictionary);
        
        Alamofire.request(URL).responseJSON { response in
            

        let json = JSON(response.result.value);
            
            let data = json["result"]["data"];
            
            for (index,subJson):(String, JSON) in data{
            
                
                let jokeData:M_JokeData = M_JokeData.init(dict: subJson.dictionaryObject as! [String : AnyObject]);
                self.arrayJokeData.append(jokeData)

            }
            
            self.TB_JokeList?.reloadData();
        }
        self.view .addSubview(TB_JokeList!);
    
    }
    
    
    //MARK: - UITableViewDataSource -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.arrayJokeData.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CellJoke = tableView.dequeueReusableCell(withIdentifier: CellID) as!CellJoke
        
       let jokeData:M_JokeData = self.arrayJokeData[indexPath.row] as! M_JokeData;
 
        cell.LB_Content.text = jokeData.content;
        
        return cell;
        
    }
    
    
    //MARK: -
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
