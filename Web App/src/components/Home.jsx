import React from "react";
import Hero from "./Hero";
import DownloadApp from "./DownloadApp";
// import Features from "./Features";
import BookARide from "./BookARide";

function Home(){
	return (
		<div id="home-page">
			<Hero />
			{/* <Features /> */}
			<BookARide />
			<DownloadApp />
		</div>
		
	);
}

export default Home;
