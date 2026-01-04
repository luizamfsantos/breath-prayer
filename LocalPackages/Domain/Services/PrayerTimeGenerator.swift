//
//  PrayerTimeGenerator.swift
//  Breath Prayer
//
//  Created by Luiza Santos on 1/4/26.
//

import Foundation

func generateTimes(
    start: DateComponents,
    end: DateComponents,
    interval: Int
) -> [DateComponents] {
    var times: [DateComponents] = []
    let calendar = Calendar.current
    let today = calendar.startOfDay(for: Date())
    
    guard
        let startDate = calendar.date(bySettingHour: start.hour!, minute: start.minute!, second: 0, of: today),
        let endDate = calendar.date(bySettingHour: end.hour!, minute: end.minute!, second: 0, of: today)
    else { return times }
    
    var current = startDate
    while current < endDate {
        let comps = calendar.dateComponents([.hour, .minute, .day, .month, .year], from: current)
        times.append(comps)
        current = calendar.date(byAdding: .minute, value: interval, to: current)!
    }
    
    return times
}
