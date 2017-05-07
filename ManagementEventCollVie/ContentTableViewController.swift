//
//  ContentTableViewController.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import UIKit

class ContentTableViewController: UITableViewController {

    @IBOutlet weak var DetailDesLabel: UITextView!
    @IBOutlet weak var DetailTitleLabel: UITextField!
    @IBOutlet weak var DetailDayLabel: UILabel!
    @IBOutlet weak var DetailImageView: UIImageView!
    
    var event: Event?
    var dateEvent: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        DetailDesLabel.text = event?.content
        DetailTitleLabel.text = event?.title
        DetailImageView.image = event?.eventImage
        DetailDayLabel.text = dateEvent
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    

}
