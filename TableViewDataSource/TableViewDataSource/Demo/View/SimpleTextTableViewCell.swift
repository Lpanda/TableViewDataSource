//
//  SimpleTextTableViewCell.swift
//  TableViewDataSource
//
//  Created by 杨帅 on 2019/3/13.
//  Copyright © 2019年 杨帅. All rights reserved.
//

import UIKit

class SimpleTextTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var contentLabel: UILabel!
    
    var cellModel : SimpleTextCellModel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

extension SimpleTextTableViewCell : BaseCellProtocol {

    func updateCell(cellViewModel: BaseCellModelProtocol?) {
        cellModel = cellViewModel as? SimpleTextCellModel
        
        titleLabel.text = cellModel.title
        contentLabel.text = cellModel.content
    }
    
    static func heightForViewModel(cellViewModel: BaseCellModelProtocol, atIndex index: IndexPath, tableView: UITableView) -> CGFloat {
        return 60.0
    }
}
