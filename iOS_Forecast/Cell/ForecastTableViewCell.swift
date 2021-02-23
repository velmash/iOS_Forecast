//
//  ForecastTableViewCell.swift
//  iOS_Forecast
//
//  Created by 윤형찬 on 2021/02/22.
//

import UIKit

class ForecastTableViewCell: UITableViewCell {
    
    static let identifier = "ForecastTableViewCell"
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        backgroundColor = .clear
        
        statusLabel.textColor = .white
        dateLabel.textColor = statusLabel.textColor
        timeLabel.textColor = statusLabel.textColor
        temperatureLabel.textColor = statusLabel.textColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
