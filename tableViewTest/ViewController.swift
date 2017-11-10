//
//  ViewController.swift
//  tableViewTest
//
//  Created by maomao on 2017/11/9.
//  Copyright © 2017年 maomao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataArray = NSMutableArray()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        for _ in 0...20 {
            dataArray.add("发了哈伦裤啊是来打开按时到了卡号爱上啦黑短裤暗示的来看爱上啦都好看阿斯达还看了阿斯达还看了阿斯达还看了啊是离开阿斯达哈伦裤阿斯达还看了阿斯达哈伦裤阿斯达了好快阿斯达哈伦裤阿斯达哈伦裤阿斯达了好快阿斯达还看了阿斯达了好快阿斯达了好快阿斯达还看了按顺口溜从阿斯达了好快sad还看了啊是否哈伦裤阿斯达还看了； 阿斯达了好快阿斯达开会了阿斯达开会了啊是来打开和爱上啦肯定会啊是离开和爱上啦反馈或啊是离开和发三点开会拉横幅拉克丝和v爱上啦都好看法拉是空号v")
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : UITableViewDataSource,UITableViewDelegate{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "TextCell", for: indexPath) as? TextCell
        
        if (indexPath.row%2 == 0) {
            cell?.changeText()
        }else{
            cell?.textLaebl.text = dataArray[indexPath.row] as? String
            cell?.textLaebl.font = UIFont.systemFont(ofSize: 18)
            cell?.textLaebl.textColor = UIColor.black
        }
        return cell!
    }
    
        func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
            return UITableViewAutomaticDimension
        }
    
}

