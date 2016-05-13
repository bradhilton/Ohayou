//
//  NSDate+Extensions.swift
//  DateUtils
//
//  Created by Bradley Hilton on 3/2/16.
//  Copyright © 2016 Brad Hilton. All rights reserved.
//

extension NSDate {
    
    public convenience init(_ date: Date) {
        self.init(timeIntervalSinceReferenceDate: date.timeIntervalSinceReferenceDate)
    }
    
}
