import React from "react";
import Footer from "./Footer";
import Home from "./Home";
import NavBar from "./NavBar";
import {BrowserRouter,Routes,Route} from "react-router-dom";

function App(){
	return (
		<div>
			<NavBar />
			<BrowserRouter>
			<Routes>
				<Route path="/" element={<Home />} />
			</Routes>
			</BrowserRouter>
			<Footer />
		</div>
	);
}

export default App;
