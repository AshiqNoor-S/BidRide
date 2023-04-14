import React from "react";

function Footer(){
return (
	<div className="footer">
	<footer className="footer-section">
		<div className="container">
			<div className="footer-cta pt-5 pb-5">
				<div className="row">
					<div className="col-xl-4 col-md-4 mb-30">
						<div className="single-cta">
							<i className="fas fa-map-marker-alt"></i>
							<div className="cta-text">
								<h4>Find us</h4>
								<span>Chennai , Tamil Nadu</span>
							</div>
						</div>
					</div>
					<div className="col-xl-4 col-md-4 mb-30">
						<div className="single-cta">
							<i className="fas fa-phone"></i>
							<div className="cta-text">
								<h4>Call us</h4>
								<span>+91xxxxxxxxxx</span>
							</div>
						</div>
					</div>
					<div className="col-xl-4 col-md-4 mb-30">
						<div className="single-cta">
							<i className="far fa-envelope-open"></i>
							<div className="cta-text">
								<h4>Mail us</h4>
								<span>teampb729@gmail.com</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div className="footer-content pt-5 pb-5">
				<div className="row">
					<div className="col-xl-4 col-lg-4 mb-50">
						<div className="footer-widget">
							<div className="footer-logo">
								<a href="index.html"><img src="images/logo.png" class="img-fluid" alt="logo" /></a>
							</div>
							<div className="footer-social-icon">
								<span>Follow us</span>
								<a href="#"><i class="fab fa-facebook-f facebook-bg"></i></a>
								<a href="#"><i class="fab fa-twitter twitter-bg"></i></a>
								<a href="#"><i class="fab fa-google-plus-g google-bg"></i></a>
							</div>
						</div>
					</div>
					<div className="col-xl-4 col-lg-4 col-md-6 mb-30">
						<div className="footer-widget">
							<div className="footer-widget-heading">
								<h3>Useful Links</h3>
							</div>
							<ul className="foot-list">
								<li><a href="#">Home</a></li>
								<li><a href="#">Our Services</a></li>
								<li><a href="#">Contact us</a></li>
							</ul>
						</div>
					</div>
					<div className="col-xl-4 col-lg-4 col-md-6 mb-50">
						<div className="footer-widget">
							<div className="footer-widget-heading">
								<h3>Reach out to us</h3>
							</div>
							<div className="footer-text mb-25">
								<p>If you have any queries , kindly fill the form below.</p>
							</div>
							<div className="subscribe-form">
								<form action="#">
									<input type="text" placeholder="Email Address" />
									<button><i class="fab fa-telegram-plane"></i></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div className="copyright-area">
			<div className="container">
				<div className="row">
					<div className="col-xl-6 col-lg-6 text-center text-lg-left">
						<div className="copyright-text">
							<p>Copyright &copy; 2023, All Right Reserved T - 7 2 9</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	</div>
);}

export default Footer;