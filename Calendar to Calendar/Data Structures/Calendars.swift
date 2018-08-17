//
//  Calendars.swift
//  Calendar to Calendar
//
//  Created by Jack Rosen on 8/13/18.
//  Copyright © 2018 Jack Rosen. All rights reserved.
//

import Foundation

class Calendars{
    private static var googleCalendars = [Calendar]()
    private static var outlookCalendars = [Calendar]()
    static var all: [Calendar] {
        if ServerInteractor.currentServer == .GOOGLE{
            return googleCalendars
        }
        return outlookCalendars
    }
    static func addCalendar(calendar: Calendar){
        if ServerInteractor.currentServer == .GOOGLE{
            googleCalendars.append(calendar)
        } else {
            outlookCalendars.append(calendar)
        }
    }
    static func removeAll(){
        if ServerInteractor.currentServer == .GOOGLE{
            googleCalendars.removeAll()
        } else {
            outlookCalendars.removeAll()
        }
    }
}
