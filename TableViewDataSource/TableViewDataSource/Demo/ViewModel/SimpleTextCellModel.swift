//
//  SimpleTextCellModel.swift
//  TableViewDataSource
//
//  Created by 杨帅 on 2019/3/13.
//  Copyright © 2019年 杨帅. All rights reserved.
//

import UIKit

class SimpleTextCellModel: NSObject, BaseCellModelProtocol {
    
    var cellClass: AnyClass = SimpleTextTableViewCell.self
    
    var cellIdentifier: String = "SimpleTextTableViewCell"
    
    var title = ""
    
    var content = ""
    
    init(withTitle title:String, content:String) {
        self.title = title
        self.content = content
        super.init()
    }
}


