//
//  Date.swift
//  DateUtils
//
//  Created by Bradley Hilton on 3/2/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

private var currentCalendar: NSCalendar {
    return NSCalendar.currentCalendar()
}

public struct Date {
    
    public var calendar: NSCalendar {
        didSet {
            modifyComponents { $0.calendar = self.calendar }
        }
    }
    
    internal var foundationDate: NSDate
    
    public var timeIntervalSinceReferenceDate: NSTimeInterval {
        return foundationDate.timeIntervalSinceReferenceDate
    }
    
    public init(_ foundationDate: NSDate,
        calendar: NSCalendar = currentCalendar,
        timeZone: NSTimeZone? = nil) {
        self.foundationDate = foundationDate
        self.calendar = calendar
        if let timeZone = timeZone {
            self.timeZone = timeZone
        }
    }
    
    public var timeZone: NSTimeZone {
        get {
            return calendar.timeZone
        }
        set {
            calendar.timeZone = newValue
        }
    }
    
}

extension Date : Comparable, CustomStringConvertible {
    
    public var description: String {
        return foundationDate.description
    }
    
    public func descriptionWithLocale(locale: AnyObject?) -> String {
        return foundationDate.descriptionWithLocale(locale)
    }
    
    public func descriptionWithFormat(format: String) -> String {
        let formatter = NSDateFormatter()
        formatter.dateFormat = format
        return formatter.stringFromDate(foundationDate)
    }
    
}

public func ==(lhs: Date, rhs: Date) -> Bool {
    return lhs.timeIntervalSinceReferenceDate == rhs.timeIntervalSinceReferenceDate
}

public func <(lhs: Date, rhs: Date) -> Bool {
    return lhs.timeIntervalSinceReferenceDate < rhs.timeIntervalSinceReferenceDate
}

extension Date {
    
    public static var distantFuture: Date {
        return Date(NSDate.distantFuture())
    }
    
    public static var distantPast: Date {
        return Date(NSDate.distantPast())
    }
    
}

extension Date {
    
    public init(era: Int? = nil, year: Int? = nil, quarter: Int? = nil, month: Int? = nil, day: Int? = nil, hour: Int? = nil, second: Int? = nil, nanosecond: Int? = nil, weekday: Int? = nil, weekdayOrdinal: Int? = nil, weekOfMonth: Int? = nil, weekOfYear: Int? = nil, calendar: NSCalendar? = nil, timeZone: NSTimeZone? = nil) {
        self = Date(NSDate())
        if let calendar = calendar { self.calendar = calendar }
        if let timeZone = timeZone { self.timeZone = timeZone }
        if let era = era { self.era = era }
        if let year = year { self.year = year }
        if let quarter = quarter { self.quarter = quarter }
        if let month = month { self.month = month }
        if let day = day { self.day = day }
        if let hour = hour { self.hour = hour }
        if let second = second { self.second = second }
        if let nanosecond = nanosecond { self.nanosecond = nanosecond }
        if let weekday = weekday { self.weekday = weekday }
        if let weekdayOrdinal = weekdayOrdinal { self.weekdayOrdinal = weekdayOrdinal }
        if let weekOfMonth = weekOfMonth { self.weekOfMonth = weekOfMonth }
        if let weekOfYear = weekOfYear { self.weekOfYear = weekOfYear }
    }
    
}












