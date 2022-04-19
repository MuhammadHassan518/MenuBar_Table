//
//  Table_VC_Cell.swift
//  MenuTable
//
//  Created by Muhammad Hassan on 04/04/2022.
//

import UIKit

class Table_VC_Cell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
