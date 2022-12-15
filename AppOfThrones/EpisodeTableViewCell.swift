//
//  EpisodeTableViewCell.swift
//  AppOfThrones
//
//  Created by Sotronic on 29/11/22.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {

    //@IBOutlet weak var thumb: UIImageView!
    
    //@IBOutlet weak var title: UILabel!
    
    //@IBOutlet weak var date: UILabel!
    
    //@IBOutlet weak var rateButton: UIButton!
    
    override func awakeFromNib() {
//        thumb.layer.cornerRadius = 2.0
//        thumb.layer.borderColor = UIColor.white.withAlphaComponent(0.2).cgColor
//        thumb.layer.borderWidth = 1.0
        //rateButton.layer.cornerRadius = 15
    }
    
    func setEpisode(_ episode: Episode){
        //thumb.image = UIImage.init(named: episode.image ?? "")
        //title.text = episode.name
        //date.text = episode.date
    }
}
