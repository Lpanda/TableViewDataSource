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
    
    func updateCell(cellViewModel : BaseCellModelProtocol?)
    
    static func heightForViewModel(cellViewModel : BaseCellModelProtocol, atIndex index : IndexPath ,tableView : UITableView ) -> CGFloat
}
