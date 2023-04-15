import React from "react";

function AboutUs(){
	return (
		<div id="about-us">
			<h1>About Us</h1>
			<p id="about-us-description">
			BidRide is a blockchain-based web and mobile application designed to provide users with a fair and transparent cab booking experience. <br /><br /> The app allows drivers nearby to bid on fares, and users can choose the most favorable bid. To ensure fair pricing, the app implements specific price ranges per km. If users receive bids below the base price, they have the option to donate the remaining amount to charity. All transactions, including donations, are recorded on the blockchain, ensuring security, transparency, and tamper-proof records. <br /><br /> BidRide aims to revolutionize the ride-sharing industry, providing efficiency, lower transaction costs, and no third-party interference. <br /><br /> <span id="join-bidride"> Join <span className="color-purple">BidRide</span> today and experience a new level of fair and transparent ride-sharing!</span>
			</p>
		</div>
	);
}

export default AboutUs;
