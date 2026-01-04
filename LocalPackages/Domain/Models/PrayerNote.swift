//
//  PrayerNote.swift
//  Breath Prayer
//
//  Created by Luiza Santos on 1/4/26.
//

import Foundation

public struct PrayerNote: Identifiable, Codable {
    public let id: UUID
    let personId: UUID
    let text: String
    let createdAt: Date
}
