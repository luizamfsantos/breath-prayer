//
//  PrayerSchedule.swift
//  Breath Prayer
//
//  Created by Luiza Santos on 1/4/26.
//

import Foundation

public struct PrayerSchedule: Codable {
    var startTime: DateComponents
    var endTime: DateComponents
    var intervalMinutes: Int
}
