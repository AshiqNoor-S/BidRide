import React from "react";

function Hero(){
	return (
		<div className="hero-section">
		<div className="hero-text">
			<h1 className="hero-headline">Revolutionizing the <span className="color-yellow">taxi industry</span><span className="color-purple"><br/>with blockchain</span></h1>
			<h3 id="sub-caption-1">Take control of your fare. </h3>
			<h3 id="sub-caption-2">Bid for the lowest price available...</h3>
		</div>
			<img src="./images/hero-img.png" id="img-hero-section" alt="auto" />
			<div id="features" class="wrap">
				<div class="box">
					<div class="box-top">
						<img class="box-image" src="./images/hero-img.png" alt="Ambulance" />
							<div class="title-flex">
								<h3 class="box-title">Choose Your Ride</h3>
							</div>
					</div>
				</div>

				<div class="box">
					<div class="box-top box-2">
						<img class="box-image" src="./images/hero-img.png" alt="Health Vitals" />
							<div class="title-flex">
								<h3 class="box-title">Choose Your Fare</h3>
							</div>
					</div>
				</div>

				<div class="box">
					<div class="box-top">
						<img class="box-image" src="./images/hero-img.png" alt="Doctor" width="10px" />
							<div class="title-flex">
								<h3 class="box-title">Book Anytime, Anywhere</h3>
							</div>
					</div>
				</div>

			</div>
		</div>
		
	);
}

export default Hero;
