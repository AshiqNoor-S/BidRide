import React from "react";

function BookARide(){
	return (
		<div>
			<h1>BookARide</h1>
			<form method="POST" action="/book-ride">
				<input type="text" className="pickup-location-input" name="pickupLocation" placeholder="Enter Pickup Point" />
				<input type="text" className="drop-location-input" name="dropLocation" placeholder="Enter Drop Point" />
			</form>
		</div>
		
	);
}

export default BookARide;
