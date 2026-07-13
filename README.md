# Lisa AI Dating Support

A small, private SwiftUI journaling and conversation-practice app.

## Privacy

- Journal text is stored locally with `AppStorage`.
- The app has no analytics, account system, network service, or cloud upload.
- Personal photos and journal exports must never be committed to this repository.
- Do not place real dating profiles or personally identifying information in source code.

## Source layout

- `LisaDatingApp/LisaDatingApp.swift` — application entry point
- `LisaDatingApp/ContentView.swift` — journal and message-practice interface

## Build

Create an iOS SwiftUI project in Xcode 15 or newer, add the files from `LisaDatingApp/`, choose your own bundle identifier, and run on a simulator or personal device.

This repository intentionally does not include signing identities, provisioning profiles, personal images, journals, or exported user data.

## Security notice

Earlier ZIP uploads contained private material. Removing them from the current branch does not remove historical Git objects. Make the repository private and purge the affected files from history before treating the exposure as resolved.
