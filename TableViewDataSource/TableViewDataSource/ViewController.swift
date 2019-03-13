//
//  ViewController.swift
//  TableViewDataSource
//
//  Created by 杨帅 on 2019/3/13.
//  Copyright © 2019年 杨帅. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let dataSource = TableDatasource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configDataSource()
    }

    func configDataSource()  {
        tableView.dataSource = dataSource
        
        for index in 1...10 {
            let indexString = String(index)
            let title = "第" + indexString + "行"
            let content = "这是第" + indexString + "行数据"
            let cellModel = SimpleTextCellModel(withTitle: title, content: content)
            
            dataSource.addCellModel(cellModel: cellModel)
        }
        
        tableView.reloadData()
    }
    
    // MARK: - TableViewDelegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellModel = dataSource.cellModels[indexPath.row]
        let cellClass = cellModel.cellClass as! BaseCellProtocol.Type
        let height = cellClass.heightForViewModel(cellViewModel: cellModel, atIndex: indexPath, tableView: tableView)
        return height
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let cellModel = dataSource.cellModels[indexPath.row] as? SimpleTextCellModel else {
            return
        }
        
        NSLog(cellModel.content)
    }
}

