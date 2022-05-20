//
//  TableViewCell.swift
//  TVC
//
//  Created by Germán Santos Jaimes on 20/05/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet var nombre: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
