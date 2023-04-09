import React from "react";

function NavBar(){
	return (
		<nav id="navigation-bar">
			<a href="#"><img src="./images/logo.png" id="logo" alt="logo" /></a>
			<ul className="navigation-list">
				<li id="nav-about-us" className="navigation-item"><a href="#">About Us</a></li>
				<li id="nav-book-a-ride" className="navigation-item"><a href="#">Book a Ride</a></li>
				<li id="nav-login" className="navigation-item"><a href="#">Login</a></li>
			</ul>
		</nav>
		
	);
}

export default NavBar;
