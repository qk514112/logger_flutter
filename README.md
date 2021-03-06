# Flutter extension for Logger
Please go to there for documentation.	
**Logger** package is [here](https://pub.dev/packages/logger).

**Show some ❤️ and star the repo to support the project**

### Resources:
- [Pub Package](https://pub.dev/packages/logger_flutter)
- [GitHub Repository](https://github.com/leisim/logger_flutter)

## Getting Started

### Create a `LogOutput` to send output events to `LogConsole`

`LogOutput` sends the log lines to the desired destination.<br>
The default implementation (`ConsoleOutput`) send every line to the system console.<br>
You can extend from `LogOuput` or another implementation of that, and call `LogConsole.add(event)`:

```dart
var logger = Logger(
  output: ExampleLogOutput(),
);
class ExampleLogOutput extends ConsoleOutput {
  @override
  void output(OutputEvent event) {
    super.output(event);
    LogConsole.add(event);
  }
}
```

### Show `LogConsole`

You have to options:

- Just shake the phone to show the console

```dart
LogConsoleOnShake(
  child: Container() // Your widgets
),
```

- Show the console from anywhere

```dart
LogConsole.open(context);
```

## Output

| ![](https://raw.githubusercontent.com/leisim/logger/master/art/log_console_light.png) | ![](https://raw.githubusercontent.com/leisim/logger/master/art/log_console_dark.png) |
|---|---|

## MIT License
```
Copyright (c) 2019 Simon Leier
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
```