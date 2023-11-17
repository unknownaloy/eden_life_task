# EDEN LIFE TASK

An app for Eden Life Task with include sign-in-with Google and GitHub, realtime data integration with Ably.

[Download EdenLife Task for Android](https://github.com/unknownaloy/eden_life_task/raw/master/apk/eden_life_task.apk)

## Prerequisites
- Create an account on [Ably](https://ably.com/)
- Generate your API KEY on the dashboard
- On the ***console*** add a new channel called ***eden-order***

## Emitting of data from Ably
Emitting of data should take the format of ***Event name*** and ***Message data*** respectively
- **Event name:** ORDER PLACED | **Message data:** "ADD_MESSAGE_HERE"
- **Event name:** ORDER ACCEPTED | **Message data:** "ADD_MESSAGE_HERE"
- **Event name:** ORDER PICK UP IN PROGRESS | **Message data:** "ADD_MESSAGE_HERE"
- **Event name:** ORDER ON THE WAY TO CUSTOMER | **Message data:** "ADD_MESSAGE_HERE"
- **Event name:** ORDER ARRIVED | **Message data:** "ADD_MESSAGE_HERE"
- **Event name:** ORDER DELIVERED | **Message data:** "ADD_MESSAGE_HERE"

## Project Configuration
- Create a folder in the PROJECT_NAME/lib/config/
- Create a dart file ***ably_key.dart***
- Inside the ***ably_key.dart*** paste your API key ***const String ablyKey = PASTE YOUR API KEY HERE***
- Run ***flutter pub get*** to get dependencies
- Run ***flutter run*** to build the project on your emulator

<a href="https://drive.google.com/uc?export=view&id=1IQRRIt3AHbZjIRiHvyLVYXYrDxPUx8cY"><img alt="Instruction screenshot" src="https://drive.google.com/uc?export=view&id=1IQRRIt3AHbZjIRiHvyLVYXYrDxPUx8cY" style="width: 640px" title="Click to enlarge picture" />