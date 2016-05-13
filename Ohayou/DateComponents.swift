//
//  DateComponents.swift
//  DateUtils
//
//  Created by Bradley Hilton on 3/2/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

private var allCalendarUnits: NSCalendarUnit = [
    .Era, .Year, .Month, .Day, .Hour, .Minute, .Second,
    .Weekday, .WeekdayOrdinal, .Quarter, .WeekOfMonth, .WeekOfYear,
    .Nanosecond, .Calendar, .TimeZone
]

extension Date {
    
    /// Includes all components except for `YearForWeekOfYear`
    public var allComponents: NSDateComponents {
        get {
            return components(allCalendarUnits)
        }
        set {
            if let foundationDate = calendar.dateFromComponents(newValue) {
                self.foundationDate = foundationDate
            }
        }
    }
    
    public func components(unitFlags: NSCalendarUnit) -> NSDateComponents {
        return calendar.components(unitFlags, fromDate: foundationDate)
    }
    
    internal mutating func modifyComponents(handler: (NSDateComponents) -> ()) {
        let components = allComponents
        handler(components)
        allComponents = components
    }
    
    public var era: Int {
        get {
            return calendar.component(.Era, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.era = newValue }
        }
    }
    
    public var year: Int {
        get {
            return calendar.component(.Year, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.year = newValue }
        }
    }
    
    public var month: Int {
        get {
            return calendar.component(.Month, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.month = newValue }
        }
    }
    
    public var day: Int {
        get {
            return calendar.component(.Day, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.day = newValue }
        }
    }
    
    public var hour: Int {
        get {
            return calendar.component(.Hour, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.hour = newValue }
        }
    }
    
    public var minute: Int {
        get {
            return calendar.component(.Minute, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.minute = newValue }
        }
    }
    
    public var second: Int {
        get {
            return calendar.component(.Second, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.second = newValue }
        }
    }
    
    public var weekday: Int {
        get {
            return calendar.component(.Weekday, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.weekday = newValue }
        }
    }
    
    public var weekdayOrdinal: Int {
        get {
            return calendar.component(.WeekdayOrdinal, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.weekdayOrdinal = newValue }
        }
    }
    
    public var quarter: Int {
        get {
            return calendar.component(.Quarter, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.quarter = newValue }
        }
    }
    
    public var weekOfMonth: Int {
        get {
            return calendar.component(.WeekOfMonth, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.weekOfMonth = newValue }
        }
    }
    
    public var weekOfYear: Int {
        get {
            return calendar.component(.WeekOfYear, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.weekOfYear = newValue }
        }
    }
    
    public var nanosecond: Int {
        get {
            return calendar.component(.Nanosecond, fromDate: foundationDate)
        }
        set {
            modifyComponents { $0.nanosecond = newValue }
        }
    }
    
}

