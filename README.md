# BidRide

BidRide is a blockchain-based web and mobile application designed to provide users with a fair and transparent cab booking experience. The app allows drivers nearby to bid on fares, and users can choose the most favorable bid. To ensure fair pricing, the app implements specific price ranges per km. If users receive bids below the base price, they have the option to donate the remaining amount to charity. All transactions, including donations, are recorded on the blockchain, ensuring security, transparency, and tamper-proof records. BidRide aims to revolutionize the ride-sharing industry, providing efficiency, lower transaction costs, and no third-party interference. Join BidRide today and experience a new level of fair and transparent ride-sharing.

# WEB APP :
 
The web application provides an easy-to-use interface for users to select their pickup and drop-off locations, choose their desired ride, and complete their booking. The application is built using React as the front-end framework, and it integrates with a backend API to retrieve data and perform booking actions.

Features:

User authentication: The application allows users to create an account, log in, and log out. Users can view their booking history, manage their profile, and edit their payment details.

Cab booking: Users can select their pickup and drop-off locations, choose their desired ride type, and complete their booking. The application displays available ride options based on the user's location and time of day. Users can view details about the ride, including the estimated time of arrival and the fare. One significant feature to note here is , users can choose the ride from a list of real-time cabs nearby which comes along with the price details.

Payment integration: The application integrates with a payment gateway to enable users to complete their bookings using a credit card or other payment methods.

Booking management: Users can view their upcoming and past bookings and cancel their bookings if necessary. The application also sends booking confirmation and cancellation emails to users.

Admin panel: The application has an admin panel that allows administrators to manage users, bookings, and ride options. Admins can view and edit user profiles, view booking details, and manage ride options.

Technology stack:
The BidRide application is built using React and React Router for the front-end. The back-end is built using Node.js and MongoDB. The application also integrates with a payment gateway Block chain API for payment processing.


# MOBILE APP :
BidRide is a taxi booking app built with Flutter that allows users to select their preferred ride type and choose the fare they prefer based on bids submitted by drivers. With BidRide, users have the flexibility to pick the best ride and fare that fits their needs.
Features-
   Ride Selection: Users can choose from a variety of ride types, including economy, premium, and luxury, based on their needs and preferences.
   Bid Selection: Drivers can submit their preferred fares, and users can choose the best option for them.
   Live Tracking: Users can track their ride in real-time, ensuring that they always know where their driver is and when they will arrive.
   Payment Integration: BidRide has integrated with various payment gateways, making it easy for users to pay for their rides securely.
   Ride History: Users can view their ride history, including details such as the driver's name, ride duration, and fare paid.
   Ride Sharing: Users can choose to share their ride with other passengers and split the fare.
   Driver Ratings: Users can rate their drivers based on their ride experience, providing valuable feedback to improve future rides.

Technology Stack-

BidRide is built using the following technologies
    Frontend: Flutter, Dart
    Backend: Firebase, Firestore (future implementation)
    Third-party APIs: Google Maps, Google Pay (future implementation)





# BACK-END:

The RideSharing contract is a Solidity smart contract designed to facilitate transactions for a ride-sharing application on the Ethereum blockchain. The contract is deployed on the blockchain and runs on a network of computers, allowing users to interact with it via the application interface.

The contract includes various functions for creating, updating, and cancelling ride requests and also provide unique tokens for the passengers aswell as the drivers for secure transactions. For example, users can create a new ride request by specifying the pickup and destination locations, as well as the maximum number of passengers. The contract stores this information and makes it available to other users who are looking for a ride.

The driver's in the proximity of the passenger put forward different rates which can be selected by the passenger.

Once a ride request is created, other users can search for available rides and offer to become the driver. The contract provides features for verifying the driver's identity and for handling payments between the driver and rider.

When a ride is completed, the contract can handle feedback between the driver and rider, allowing them to rate each other based on the quality of the ride. The contract also includes safety features, such as limiting the maximum number of passengers and verifying driver and rider ratings, to ensure a safe and secure ride-sharing experience.

In addition, the RideSharing contract is designed to be deployed to the Ethereum mainnet or testnets using a tool like Hardhat. This allows developers to test and deploy the contract in a secure and decentralized environment, without relying on centralized third-party services.

Overall, the RideSharing contract provides a secure and decentralized platform for ride-sharing transactions on the blockchain, allowing users to easily create and manage ride requests, as well as handle payments and feedback between drivers and riders.
