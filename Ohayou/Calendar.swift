//
//  Calendar.swift
//  DateUtils
//
//  Created by Bradley Hilton on 3/2/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension Date {
    
    var isToday: Bool {
        return calendar.isDateInToday(foundationDate)
    }
    
    var isYesterday: Bool {
        return calendar.isDateInYesterday(foundationDate)
    }
    
    var isTommorrow: Bool {
        return calendar.isDateInTomorrow(foundationDate)
    }
    
    var isWeekend: Bool {
        return calendar.isDateInWeekend(foundationDate)
    }
    
}
