//
//  BaseCellProtocol.swift
//  PandaSwift
//
//  Created by 杨帅 on 2018/3/28.
//  Copyright © 2018年 杨帅. All rights reserved.
//

import Foundation
import UIKit

protocol BaseCellProtocol {
    func updateCell(cellViewModel : NSObject) -> Void
    
    static func heightForViewModel(cellViewModel : NSObject, atIndex index : IndexPath ,tableView : UITableView ) -> CGFloat
}
