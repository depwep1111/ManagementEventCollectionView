//
//  EventCollectionViewCell.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import UIKit

class EventCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var eventLable: UILabel!
    @IBOutlet weak var eventImageView: UIImageView!
    
    func configCellWith(event: Event){
        eventLable.text = event.title
        eventImageView.image = event.eventImage
    }
}
