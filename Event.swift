//
//  Event.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import Foundation
import UIKit

class Event
{
    var title: String
    var content: String
    var eventImage: UIImage
    
    init(titled: String, content: String, eventImaged: UIImage)
    {
        self.title = titled
        self.content = content
        self.eventImage = eventImaged
    }
}
