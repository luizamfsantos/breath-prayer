//
//  NotificationScheduler.swift
//  Breath Prayer
//
//  Created by Luiza Santos on 1/4/26.
//

import UserNotifications

public final class NotificationScheduler {
    public func schedule(
        person: Person,
        schedule: PrayerSchedule,
        message: String
    ) {
        let center = UNUserNotificationCenter.current()
        
        let times = generateTimes(
            start: schedule.startTime,
            end: schedule.endTime,
            interval: schedule.intervalMinutes
        )
        
        for t in times {
            let content = UNMutableNotificationContent()
            content.title = "Pray for \(person.name)"
            content.body = message
            content.sound = .default
            
            let trigger = UNCalendarNotificationTrigger(
                dateMatching: t,
                repeats: false
                )
            
            let id = "\(person.id.uuidString)\(t.hour!)-\(t.minute!)"
            
            let request = UNNotificationRequest(
                identifier: id,
                content: content,
                trigger: trigger
                )
            
            center.add(request)
        }
    }
}
