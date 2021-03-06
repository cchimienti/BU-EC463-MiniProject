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
3. Go in the `Sprint 4` folder and open the `SW_Mini_Project_v3.xcworkspace` file and enter command + R

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
The database is structured in the following way. First, the parent node is always the username of the gmail user. If for some reason there is a user without a username, it will make a parent node called 'User'. After the user parent, its children are gmail --> RoomX --> TemperatureX OR HumidityX. The reason why there is a branch for 'gmail' is for future installations where other authentication processes may be available such as Facebook, or Twitter. 

![image](https://user-images.githubusercontent.com/33381712/45839492-82546580-bce2-11e8-8755-6a8bcc877df8.png)


When Room1 is expanded, the following children appear: (Notice how it does not matter whether or not TemperatureX and HumidityX is in order because when retrieving the data if will simply search for the specific node.)


![image](https://user-images.githubusercontent.com/33381712/45839715-1f170300-bce3-11e8-9139-10e4ee20d4a0.png)
