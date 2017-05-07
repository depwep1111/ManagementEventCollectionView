//
//  HeaderCollectionReusableView.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import UIKit

class HeaderCollectionReusableView: UICollectionReusableView {
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var headerImageView: UIImageView!
    var eventDates: EventLine!{
        didSet{
            headerLabel.text = eventDates.name
            headerImageView.image = eventDates.dateImages
        }
    }
}
