# Prayer Reminder App

A private iOS app for timed prayer reminders with notes.

## Architecture
- SwiftUI
- Modular SPM packages
- Local notifications
- Offline-first

## LocalPackages
- Domain: business logic
- Persistence: storage
- Notifications: scheduling
- Features: UI

## Decisions
See Docs/ADR


## Repository structure (not yet fully implemented)

```
/
├── App/
│   ├── PrayerReminderApp.swift
│   ├── AppDelegate.swift
│   ├── Info.plist
│   └── AppEnvironment.swift
│
├── LocalPackages/
│   ├── Domain/
│   │   ├── Models/
│   │   │   ├── Person.swift
│   │   │   ├── PrayerSchedule.swift
│   │   │   └── PrayerNote.swift
│   │   └── UseCases/
│   │       ├── CreatePrayerNote.swift
│   │       ├── UpdateSchedule.swift
│   │       └── LoadPrayerData.swift
│   │
│   ├── Persistence/
│   │   ├── Storage/
│   │   │   ├── PrayerStore.swift
│   │   │   └── UserDefaultsPrayerStore.swift
│   │   └── Migrations/
│   │
│   ├── Notifications/
│   │   ├── NotificationScheduler.swift
│   │   └── NotificationPermission.swift
│   │
│   ├── Features/
│   │   ├── People/
│   │   │   ├── PeopleView.swift
│   │   │   ├── PeopleViewModel.swift
│   │   │   └── EditPersonView.swift
│   │   │
│   │   ├── Notes/
│   │   │   ├── NotesView.swift
│   │   │   ├── NotesViewModel.swift
│   │   │   └── AddNoteView.swift
│   │   │
│   │   └── Schedule/
│   │       ├── ScheduleView.swift
│   │       ├── ScheduleViewModel.swift
│   │       └── TimePickerView.swift
│   │
│   └── DesignSystem/
│       ├── Colors.swift
│       ├── Typography.swift
│       └── Components/
│
├── Scripts/
│   ├── swiftlint.sh
│   └── fastlane/
│
├── Tools/
│   ├── SwiftGen/
│   └── RSwift/
│
├── Tests/
│   ├── Integration/
│   └── UITests/
│
├── Docs/
│   ├── ADR-001-Architecture.md
│   ├── ADR-002-Notifications.md
│   └── diagrams/
│
├── .swiftlint.yml
├── Project.swift
└── README.md

```
