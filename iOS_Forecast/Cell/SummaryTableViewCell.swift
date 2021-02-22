//
//  SummaryTableViewCell.swift
//  iOS_Forecast
//
//  Created by 윤형찬 on 2021/02/22.
//

import UIKit

class SummaryTableViewCell: UITableViewCell {
    
    static let identifier = "SummaryTableViewCell"

    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var minMaxLabel: UILabel!
    @IBOutlet weak var curruntTemperatureLabel: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
