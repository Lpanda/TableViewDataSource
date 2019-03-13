//
//  TableDatasource.swift
//  PandaSwift
//
//  Created by 杨帅 on 2019/3/13.
//  Copyright © 2019年 杨帅. All rights reserved.
//

import UIKit

class TableDatasource: NSObject {
    var cellModels = [BaseCellModelProtocol]()
    
    func addCellModel(cellModel:BaseCellModelProtocol)  {
        cellModels.append(cellModel)
    }
}

    // MARK: TableViewDataSource
extension TableDatasource:UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellModel = cellModels[indexPath.row]
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellModel.cellIdentifier, for: indexPath) as? BaseCellProtocol else {
            return UITableViewCell()
        }
        
        cell.updateCell(cellViewModel: cellModel as! NSObject)
        
        return cell as! UITableViewCell
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellModels.count
    }
    
}
