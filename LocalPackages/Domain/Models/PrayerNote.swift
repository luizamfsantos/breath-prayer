//
//  PrayerNote.swift
//  Breath Prayer
//
//  Created by Luiza Santos on 1/4/26.
//

import Foundation

struct PrayerNote: Identifiable, Codable {
    let id: UUID
    let personId: UUID
    let text: String
    let createdAt: Date
}
