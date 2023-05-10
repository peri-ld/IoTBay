<!DOCTYPE html>
<html>
<head>
	<title>IOTBay Product Page</title>
	<style>
		.container {
			display: flex;
			flex-direction: row;
			align-items: center;
			justify-content: space-between;
			margin: 50px;
		}
		
		.product-image {
			flex-basis: 50%;
			max-width: 500px;
			margin-right: 50px;
		}
		
		.product-info {
			flex-basis: 50%;
			max-width: 500px;
		}
		
		.product-title {
			font-size: 24px;
			font-weight: bold;
			margin-bottom: 10px;
		}
		
		.product-description {
			font-size: 16px;
			margin-bottom: 20px;
		}
		
		.product-price {
			font-size: 18px;
			font-weight: bold;
			margin-bottom: 20px;
		}
		
		.product-features {
			font-size: 16px;
			margin-bottom: 20px;
		}
		
		.product-features ul {
			list-style: none;
			padding: 0;
			margin: 0;
		}
		
		.product-features li {
			margin-bottom: 10px;
		}
		
		.product-features li strong {
			display: inline-block;
			width: 100px;
			font-weight: bold;
			margin-right: 10px;
		}

		/* Style for header and menu bar */
		.header {
			background-color: #cceeff;
			color: black;
			padding: 20px;
		}

		.menu {
			display: flex;
			 justify-content: flex-end;
		}

		.menu a {
			color: black;
			margin-left: 20px;
			text-decoration: none;
			font-weight: bold;
			font-size: 18px;
		}

		.menu a:hover {
			background-color: #1AA7EC;
			color: #cceeff;
		}
	</style>
</head>
<body>
	<header class="header">
		<h1>IOTBay</h1>
		<nav class="menu">
			<a href="#">Search</a>
			<a href="#">Help</a>
			<a href="#">Account</a>
			<a href="#">Cart</a>
			<a href="#">Shop</a>
		</nav>
	</header>

	<div class="container">
		<div class="product-image">
			<img src="Photos/Smart-Speaker.png" alt="Product Name">
		</div>
		<div class="product-info">
			<div class="product-title">IOTBay Device</div>
			<div class="product-price">$74.99</div>
			<div class="product-description">This is a device that is sold through IOTBay website :)</div>
			<div class="product-features">
				<ul>
					<li><strong>Quantity </strong> <-  box -> </li>

				</ul>
			</div>
		</div>
	</div>
</body>
</html>
