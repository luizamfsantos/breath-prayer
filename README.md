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

Xcode project is kept in `Breath Prayer.xcodeproj` for now.

```
/
App/
  Breath_PrayerApp.swift
  ContentView.swift
  Item.swift
  Assets.xcassets/
LocalPackages/
  Domain/
    Models/
      Person.swift
      PrayerSchedule.swift
      PrayerNote.swift
    UseCases/
      CreatePrayerNote.swift
      UpdateSchedule.swift
      LoadPrayerData.swift
  Persistence/
    Storage/
      PrayerStore.swift
      UserDefaultsPrayerStore.swift
    Migrations/
  Notifications/
    NotificationScheduler.swift
    NotificationPermission.swift
  Features/
    People/
      PeopleView.swift
      PeopleViewModel.swift
      EditPersonView.swift
    Notes/
      NotesView.swift
      NotesViewModel.swift
      AddNoteView.swift
    Schedule/
      ScheduleView.swift
      ScheduleViewModel.swift
      TimePickerView.swift
DesignSystem/
  Colors.swift
  Typography.swift
  Components/
Scripts/
  swiftlint.sh
  fastlane/
Tools/
  SwiftGen/
  RSwift/
Tests/
  Integration/
    Breath_PrayerTests.swift
  UITests/
    Breath_PrayerUITests.swift
Docs/
  ADR-001-Architecture.md
  ADR-002-Notifications.md
  diagrams/
Breath Prayer.xcodeproj/
.swiftlint.yml
Project.swift
README.md
```


