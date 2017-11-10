//
//  TextCell.swift
//  tableViewTest
//
//  Created by maomao on 2017/11/10.
//  Copyright © 2017年 maomao. All rights reserved.
//

import Foundation
import UIKit

class TextCell: UITableViewCell{
    
    @IBOutlet weak var textLaebl: UILabel!
    
    
    public func changeText(){
        textLaebl.text = "我古佛啊王大哥吧是哒结案时阿三北大街啦阿三北大街啦啊说不定啦啊说不定啦阿斯达吧啊手机百度阿斯达吧阿斯达背景框阿三北大街看大哥吧是哒结案时"
        textLaebl.font = UIFont.boldSystemFont(ofSize: 20)
        textLaebl.textColor = UIColor.red
        self.layoutIfNeeded()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
}
