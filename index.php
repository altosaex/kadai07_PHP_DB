<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Jazz Date</title>
    <link rel="stylesheet" href="style.css" />
</head>

<body>
    <!-- Head[Start] -->
    <header>
			<div class="header">
			<div class="A">
		<main class="grid">
		<p><a class="navbar-brand" href="./select.php" style="color:white;">DateList</a></p>
		</div>
		<div class="B">
				<fieldset>

<form method="post" action="insert.php" class="form">
				<p style="color:yellow;font-size: 40px;">Hit me with your jam!</p>
			<p style="color:white;">楽曲名：<input type="text" name="title"></p>
				<p style="color:white;">アーティスト名：<input type="text" name="artist"></p>
				<p style="color:white;">URL：<input type="text" name="URL"></p>
				<p style="color:white;"><textArea name="content" rows="4" cols="40"></textArea></p>
				<input type="submit" value="送信">
				</form>
</fieldset>
</div>
</div>
    </header>
</main>
    <!-- Head[End] -->
    <!-- Main[Start] -->
		<main class="grid">
<br>
        <h1>Love Jazz</h1>


				</main>
		<!-- Main[End] -->

			<style>
a{
    /* text-decoration: none; */
		font-family:fantasy;
		font-size: 40px;
}

p{
    /* text-decoration: none; */
		font-family:"Hey October";
}

.header{
  position: relative;
}
.A{
  float: left;
	position: absolute;
  top: 25px;
  left: 25px;
    }
.B{
  float: right;
	position: absolute;
  top: 25px;
  right: 25px;
    }

	main > h1 {
  font-family: "Hey October";
  font-style: normal;
  font-weight: 400;
  font-size: 9rem;
  text-align: center;
  letter-spacing: -0.02em;
  color: #ffffff;
  z-index: 1;
}

.grid {
  display: grid;
  grid-template-columns: 1fr;
  justify-items: left;
  overflow: hidden;
}

body {
	background-image: url(img/bg.png);
	background-size: 120%;
  text-align: center;
	height: 800px;
}



@media screen and (min-width: 700px) {
  main > h1 {
    font-size: 5rem;
		padding-left: 50px;
  }
}

@media screen and (min-width: 900px) {
  main > h1 {
    font-size: 20rem;
  }
}

.A {
	margin: 20px;
}

h1 {
	margin-top: 150px;
}

</style>

</body>
</html>
