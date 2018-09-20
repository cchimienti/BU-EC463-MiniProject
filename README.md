# BU-EC463-MiniProject



SW MiniProject for EC463 Fall 2018
Hayato Nakamura and Christina Chimienti

## Project Description
This IOS application demonstrates storing temperature and humidity values from different rooms and storing them into a database. It requires Google Authentication, and each user will have a unique room and database. This project demonstrates the ability to use the Google Signin SDK, Firebase for the database, and accurate simulations of the testing environment unique to the user.

## Project Details

Application: iOS (Swift 4)  
Authentication: Google Sign-In | Firebase SDK
Database: Firebase for iOS, Google's mobile platform (IOS Default Storage)
Data Presentation: SwiftCharts SDK
Pods: Google-SignIn | Firebase/Core | Firebase/Database | SwiftCharts

## Installation Instructions
1. Download xcode.
2. Clone this repository like such: `git clone < this repo address > `
3. Open the `SW_Mini_Project_v3.xcworkspace` file and enter command + R

To run this on your actual iPhone:
1. Connect your apple device to your computer and select the pull down menu next to the stop button on the top left
2. Select your apple device as your run option
3. Unlock your phone

## Project Overview

**Sprint 1:** (9/9 ~ 9/15)

* Completion of front end planning
* IOS Authentication via Google API
* Finalize database/cloud service provider

**Sprint 2:** (9/16 ~ 9/18)

* Completion of database integration
* Automatic Updates on the cloud
* Log-in/off integration along with User Manual page

**Sprint 3:** (9/19 ~ 9/20)

* Finalize front end design
* Complete agile test
* Polish up table and database design
* Conduct final simulations

## Testing
1. Instant generation of temperature/humidity values
 - Done in the SecondViewController.swift, which includes a `Simulate New Data` button which first checks if there is a secure connection between the database and the IOS app. Then it continues to upload randomly generated data into the database.
 
2. Timed connectivity checks
- Every 20 minutes (assuming the app is not quit by the user) the IOS app checks the connectivity with the database. If connection is lost and is unable to be reconnected, returns an error label.

3. Unauthorized SignIn and Access to Room Data
 - Checks whether the user is correctly signed in or not. When an unsigned or unauthorized user attempts to view data, it will return an error label and will force the user to sign in.

## Database Design
*Insert Picture Here*
