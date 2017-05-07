//
//  EventLine.swift
//  ManagementEventCollVie
//
//  Created by tran trung thanh on 5/7/17.
//  Copyright © 2017 tran trung thanh. All rights reserved.
//

import Foundation
import UIKit
class EventLine
{
    // Variables
    var name: String            //Ngay trong tuan
    var events: [Event]     // cac su kien
    var dateImages: UIImage  // Ngay tuong ung
    
    init(named: String, includeEvents: [Event], dateImage: UIImage)
    {
        name = named
        events = includeEvents
        dateImages = dateImage
    }
    
    class func eventLines() -> [EventLine]
    {
        return [self.Monday(), self.Tuesday(), self.Wednesday(), self.Thursday(), self.Friday(), self.Saturday(), self.Sunday()]
    }
    
    // Private methods
    
    
    
    
    private class func Monday() -> EventLine { // lich thu 2
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Hoc them", content: "Hoc them ly", eventImaged: #imageLiteral(resourceName: "hocthem")))
        return EventLine(named: "Monday", includeEvents: events, dateImage: #imageLiteral(resourceName: "monday"))
    }
    private class func Tuesday() -> EventLine { // lich thu 3
        
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Di sieu thi", content: "Di sieu thi mua mi tom", eventImaged:#imageLiteral(resourceName: "sieuthi")))
        events.append(Event(titled: "Di sinh nhat", content: "Di sinh nhat ban vao buoi toi", eventImaged:#imageLiteral(resourceName: "sinhnhat")))
        return EventLine(named: "Tuesday", includeEvents: events, dateImage: #imageLiteral(resourceName: "tuesday"))
    }
    private class func Wednesday() -> EventLine { // lich thu 4
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be" , eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Ve que", content: "Ve que ngoai choi", eventImaged: #imageLiteral(resourceName: "veque")))
        events.append(Event(titled: "Lam tu thien", content: "Di gap cac tre em ngheo hieu hoc", eventImaged:#imageLiteral(resourceName: "tuthien")))
        return EventLine(named: "Wednesday", includeEvents: events, dateImage: #imageLiteral(resourceName: "wednesday"))
    }
    private class func Thursday() -> EventLine{ // lich thu 5
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Thsm gia hoi thao", content: "Tham gia hoi thao o truong", eventImaged: #imageLiteral(resourceName: "hoithao")))
        return EventLine(named: "Thursday", includeEvents: events, dateImage: #imageLiteral(resourceName: "thursday"))
    }
    private class func Friday() -> EventLine { // lich thu 6
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Hoc nhom", content: "TThao luan lam bai tap ios voi nhom", eventImaged: #imageLiteral(resourceName: "hocnhom")))
        events.append(Event(titled: "Gap TA", content: "Gap TA o truong de hoi ve cac thac mac", eventImaged: #imageLiteral(resourceName: "gapta")))
        return EventLine(named: "Friday", includeEvents: events, dateImage: #imageLiteral(resourceName: "friday"))
    }
    private class func Saturday() -> EventLine { // lich thu 7
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Thsm gia hoi thao", content: "Tham gia hoi thao o truong", eventImaged: #imageLiteral(resourceName: "hoithao")))
        return EventLine(named: "Saturday", includeEvents: events, dateImage: #imageLiteral(resourceName: "saturday"))
    }
    private class func Sunday() -> EventLine { // lich chu nhat
        
        var events = [Event]()
        
        events.append(Event(titled: "An sang", content: "An sang voi ban be", eventImaged: #imageLiteral(resourceName: "ansang")))
        events.append(Event(titled: "Di hoc", content: "di hoc tren truong", eventImaged: #imageLiteral(resourceName: "dihoc")))
        events.append(Event(titled: "Di Choi", content: "Di choi da banh", eventImaged: #imageLiteral(resourceName: "dichoi")))
        events.append(Event(titled: "Hoc them", content: "Hoc them toan", eventImaged: #imageLiteral(resourceName: "hocthem")))
        events.append(Event(titled: "Gap mat ban be", content: "Gap lai nhung ban cu thoi hoc sinh", eventImaged: #imageLiteral(resourceName: "gapta")))
        return EventLine(named: "Sunday", includeEvents: events, dateImage: #imageLiteral(resourceName: "sunday"))
    }}
