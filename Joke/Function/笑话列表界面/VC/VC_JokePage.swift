//
//  VC_JokePage.swift
//  JokeApp
//
//  Created by 陈东芝 on 16/10/16.
//  Copyright © 2016年 陈东芝. All rights reserved.
//

import UIKit

class VC_JokePage: UIViewController,UITableViewDelegate,UITableViewDataSource {

    var  TB_JokeList  : UITableView?
    
     let CellID:String = "CellJoke"
     let CellH = 60.0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        TB_JokeList = UITableView.init(frame: self.view.bounds, style:.plain);
        TB_JokeList?.delegate = self;
        TB_JokeList?.dataSource = self;
        TB_JokeList?.register(UINib.init(nibName: "CellJoke", bundle: Bundle.main), forCellReuseIdentifier: CellID)
        
        self.view .addSubview(TB_JokeList!);
    
    }
    
    
    //MARK: - UITableViewDataSource -
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell:CellJoke = tableView.dequeueReusableCell(withIdentifier: CellID) as!CellJoke
        
        return cell;
        
    }
    
    
    //MARK: -
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

}
