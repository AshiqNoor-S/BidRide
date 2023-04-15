import React from "react";
import Hero from "./Hero";
import DownloadApp from "./DownloadApp";
// import Features from "./Features";
import BookARide from "./BookARide";
import AboutUs from "./AboutUs";

function Home(){
	return (
		<div id="home-page">
			<Hero />
			{/* <Features /> */}
			<BookARide />
			<AboutUs />
			<DownloadApp />
		</div>
		
	);
}

export default Home;
