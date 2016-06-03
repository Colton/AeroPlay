# AeroPlay
  Swift Airplay Server for audio streaming
  
## Features
  - Audio streaming
  - Run multiple AirPlay servers on the same hardware
  - Specify which ports to use
  
## Dependencies
  - [CocoaAsyncSocket](https://github.com/robbiehanson/CocoaAsyncSocket)
  - CommonCrypto (Used in Swift through a module map like [this one](https://github.com/Colton/AeroPlay/tree/master/Frameworks/CommonCrypto))
  
## Usage
  
  ``` swift
  let server = AirplayServer(serverName: "Airplay Server", UID: 1, serverPortNumber: 6050, controlPortNumber: 6051, timingPortNumber: 6052) // Initialize the AirPlay server
  server.start() // Start the AirPlay server
  ```
  **Note:** If running multiple servers on the same hardware, the UID and port numbers MUST be different.
