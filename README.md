# ClipGen

ClipGen is a sleek, modern clipboard manager for macOS that lives in your menu bar. It provides easy access to your clipboard history with a clean, dark-themed interface.

## Features

- 📋 Clipboard History Tracking
- 🔄 Real-time Updates
- 🎯 One-click Copy
- 🌙 Dark Mode Support
- 🧹 Clear All Function
- 📱 Menu Bar Integration

## How It Works

ClipGen operates seamlessly in the background, enhancing your clipboard experience:

1. **Clipboard Monitoring**: The app continuously monitors your system clipboard for changes.
2. **History Storage**: When new content is copied, it's added to the top of your clipboard history.
3. **Menu Bar Access**: Click the ClipGen icon in your menu bar to open the app interface.
4. **Quick Copy**: Click on any item in your history to instantly copy it back to your clipboard.
5. **History Management**: Use the "Clear All" button to reset your clipboard history when needed.
6. **Persistence**: Your clipboard history is saved between app restarts, ensuring you never lose important information.

The app is designed to be lightweight and efficient, with minimal impact on system resources.

## Installation

1. Clone the repository

2. Open the project in Xcode

3. Build and run the project (⌘+R)

## Usage

Once installed, ClipGen will appear as an icon in your menu bar. Click the icon to:

- View your clipboard history
- Click any item to copy it back to your clipboard
- Use the "Clear All" button to reset your clipboard history

## Code Structure

The project consists of four main components:

### \`ClipGenApp.swift\`
The main entry point of the application. It sets up the menu bar item and manages the popover interface.

### \`ClipboardManager.swift\`
Handles all clipboard-related operations:
- Monitors system clipboard for changes
- Stores clipboard history
- Manages copying items back to clipboard
- Handles clearing clipboard history

### \`ContentView.swift\`
The main view of the application, containing:
- App title
- Scrollable list of clipboard items
- Clear All button

### \`ClipboardItemView.swift\`
Individual clipboard item component that:
- Displays truncated text preview
- Handles copy-back functionality
- Provides visual feedback on hover

## Requirements

- macOS 11.0 or later
- Xcode 13.0 or later
- Swift 5.5 or later

## Permissions

ClipGen requires clipboard access to function properly. The first time you run the app, macOS may prompt you to grant this permission.

## Contributing

1. Fork the repository
2. Create your feature branch (\`git checkout -b feature/AmazingFeature\`)
3. Commit your changes (\`git commit -m 'Add some AmazingFeature'\`)
4. Push to the branch (\`git push origin feature/AmazingFeature\`)
5. Open a Pull Request

## Author

ClipGen was created by Vlad Bacila - vladbacila5@gmail.com

## License

This project is licensed under the MIT License. See the License file for details.

Copyright (c) 2025 Vlad Bacila

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Acknowledgments

- Built with SwiftUI
- Inspired by modern macOS design principles
- Created for efficient clipboard management

