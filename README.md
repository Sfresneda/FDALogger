# Logger
OSLogger wrapper for logging to console, written in Swift 5.8.

## Installation
Add this SPM dependency to your project

```
https://github.com/Sfresneda/FDALogger
```

## Usage

Default logger:
```swift
import FDALogger

let logger = FDALogger.shared
logger.log(category: .info, message: "Hello World!")
```

Custom logger:
```swift
import FDALogger

let systemLogger = Logger(subsystem: "Compte", category: "Statistics")
let logger = FDALogger(logger: systemLogger)

logger.log(category: .info, message: "Hello World!")
```

## License
This project is licensed under the Apache License - see the [LICENSE](LICENSE) file for details

## Author
Sergio Fresneda - [sfresneda](https://github.com/Sfresneda)
