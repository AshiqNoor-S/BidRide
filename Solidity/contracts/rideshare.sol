//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

//imports
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract rideshare {
    
    struct Driver {
        uint id;
        address payable addr;
        uint fare;
    }

    struct Alldriver{
        uint Totaldriver;
        address addr;
        bytes32 token;
    }

    mapping(uint => Driver) public drivers;
    mapping(uint => Alldriver) public driver_Token;

    address private owner;

    modifier onlyOwner(){
        owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4; 
        require(msg.sender==owner,"Not owner");  // Owner address;
    _;
    }

    //events
    event DriverAdded(uint indexed id, address addr, uint fare);
    event Drivertoken(uint indexed Totalid,address addr,bytes32 token);
    event DriverChosen(uint indexed id, address addr, uint fare);
    event OfferAccepted(address indexed passenger, uint fare);
    event OfferCancelled(address indexed passenger);
    event PassengerTokenGenerated(address indexed passenger, bytes32 token);


    //State VAriables
    uint public numDrivers;
    uint public totaldriver;
    uint public _fare;
    address payable public passenger;
    uint public chosenFare;
    bool public completed;
    address payable public charityAccount ;
    bytes32 public passengerToken;

    //Constructor 
    constructor(address payable _passenger,address payable _charity) {
        passenger = _passenger;
        chosenFare = 0;
        completed = false;
        numDrivers = 0;
        charityAccount = _charity ;
        passengerToken = keccak256(abi.encodePacked(passenger, block.timestamp)); // Generate a unique token for the passenger
        emit PassengerTokenGenerated(passenger, passengerToken); // Emit the event for the generated passenger token
    }

    //Functions

    function addDriver(address payable driverAddr, uint fare) public onlyOwner() {
        drivers[numDrivers] = Driver(numDrivers, driverAddr, fare);
        numDrivers++;
        emit DriverAdded(numDrivers-1, driverAddr, fare);
    }

    function  driver_token(address driverAddr) public onlyOwner(){
        bytes32 token = keccak256(abi.encodePacked(driverAddr,block.timestamp)); // Generate a unique token for the driver
        driver_Token[totaldriver]=Alldriver(totaldriver,driverAddr,token);
        totaldriver++;
        emit Drivertoken(totaldriver-1,driverAddr,token);
    }

    function chooseDriver(uint driverId) public payable {
        require(msg.sender == passenger, "Only the passenger can choose a driver");
        require(driverId < numDrivers, "Invalid driver ID");
        Driver storage driver = drivers[driverId];
        chosenFare = driver.fare; // Eth fare
        emit DriverChosen(driver.id, driver.addr, driver.fare);
    }
    

    function acceptOffer() public payable {
        require(msg.sender == passenger, "Only the passenger can accept the offer");
        require(chosenFare > 0, "No driver has been chosen");
        require(msg.value >= chosenFare, "The fare offered is not enough");
        uint charityAmount = msg.value / 100; // Calculate 1% of the transaction amount
        drivers[numDrivers-1].addr.transfer(msg.value - charityAmount);
        charityAccount.transfer(charityAmount); // Send 1% of the transaction amount to the charity account
        completed = true;
        emit OfferAccepted(passenger, chosenFare);
    }

    function cancel() public {
        require(msg.sender == passenger, "Only the passenger can cancel the offer");
        require(!completed, "The transaction has already been completed");
        payable(passenger).transfer(address(this).balance);
        completed = true;
        emit OfferCancelled(passenger);
    }
}
