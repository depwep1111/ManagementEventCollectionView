//
//  ManagementEventCollectionViewController.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import UIKit

var eventLines = EventLine.eventLines();

class ManagementEventCollectionViewController: UICollectionViewController {

    struct StoryBoard {
        static let headerSectionView = "header"
        static let eventCell = "eventCell"
        static let showDetailSegue = "detail"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return eventLines.count
    }
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return eventLines[section].events.count
    }
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: StoryBoard.eventCell, for: indexPath) as! EventCollectionViewCell
        let event = eventLines[indexPath.section].events[indexPath.item];
        cell.configCellWith(event: event)
        return cell;
    }
    //MARK: - Config Header Section Cell
    override func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let headerSectionView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: StoryBoard.headerSectionView, for: indexPath) as! HeaderCollectionReusableView
        let eventLine = eventLines[indexPath.section];
        headerSectionView.headerLabel.text = eventLine.name
        headerSectionView.headerImageView.image = eventLine.dateImages
        return headerSectionView
    }
    // MARK: - UICollectionViewDelegate
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: StoryBoard.showDetailSegue, sender: indexPath);
    }
    
    // MARK: - Event Detail
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == StoryBoard.showDetailSegue {
            let eventDetailVC = segue.destination as!ContentTableViewController
            let index = sender as! IndexPath
            let evenLine = eventLines[index.row]
            let event = evenLine.events[index.item]
            eventDetailVC.event = event
            eventDetailVC.dateEvent = evenLine.name
            
        }
    }
   

}
