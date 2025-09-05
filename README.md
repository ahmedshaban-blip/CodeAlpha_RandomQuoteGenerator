# Random Quote Generator

[![Ask DeepWiki](https://devin.ai/assets/askdeepwiki.png)](https://deepwiki.com/ahmedshaban-blip/CodeAlpha_RandomQuoteGenerator)

A simple and elegant cross-platform application built with Flutter that displays inspirational quotes. Users can generate new quotes on-demand, copy them to the clipboard, or share them through other applications.

## Features

- **Random Quotes**: Tap a button to generate and display a new quote from a curated list.
- **Copy to Clipboard**: Easily copy the current quote and author to the clipboard.
- **Share Functionality**: Share your favorite quotes with friends using the native platform sharing capabilities.
- **Clean UI**: A modern and intuitive user interface with a pleasant gradient background and smooth fade/slide animations for quote transitions.
- **State Management**: Implemented using `flutter_bloc` for efficient and predictable state management.
- **Cross-Platform**: A single codebase that runs on Android, iOS, Windows, macOS, Linux, and Web.

## Technology Stack

- **Framework**: [Flutter](https://flutter.dev/)
- **Language**: [Dart](https://dart.dev/)
- **State Management**: [flutter_bloc](https://pub.dev/packages/flutter_bloc)
- **Dependencies**:
  - `share_plus`: For providing the share functionality.

## Getting Started

To get a local copy up and running, follow these simple steps.

### Prerequisites

Ensure you have the Flutter SDK installed on your machine. For installation instructions, see the [official Flutter documentation](https://flutter.dev/docs/get-started/install).

### Installation

1.  **Clone the repository:**
    ```sh
    git clone https://github.com/ahmedshaban-blip/CodeAlpha_RandomQuoteGenerator.git
    ```

2.  **Navigate to the project directory:**
    ```sh
    cd CodeAlpha_RandomQuoteGenerator
    ```

3.  **Install dependencies:**
    ```sh
    flutter pub get
    ```

4.  **Run the application:**
    ```sh
    flutter run
    ```
    You can also select a target device (e.g., `flutter run -d chrome` to run on the web).

## Project Structure

The core logic of the application resides within the `lib/` directory.

```
lib/
├── cubit/
│   ├── quote_cubit.dart    # BLoC cubit for managing quote state and logic
│   └── quote_state.dart    # Defines the state structure for the quotes
├── main.dart               # The main entry point of the application
└── quote_page.dart         # The main UI screen that displays quotes and actions
