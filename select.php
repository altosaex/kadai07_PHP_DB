<?php
//1.  DB接続します
require_once('funcs.php');

try {
	//ID:'root', Password: xamppは 空白 ''
	$pdo = new PDO('mysql:dbname=gs_jazz;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
	exit('DBConnectError:' . $e->getMessage());
}

//２．データ取得SQL作成
$stmt = $pdo->prepare("SELECT * FROM gs_bm_table");
$status = $stmt->execute();

//３．データ表示
$view="";
if ($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
		$view .= '<br><p class="list">';
		$view .= h($result['date'], ENT_QUOTES);
		$view .= '</p><p class="list">';
		$view .= h($result['title'], ENT_QUOTES);
		$view .= "／";
		$view .= h($result['artist'], ENT_QUOTES);
		$view .= '</p><p class="list">';
		$view .= $result['URL'];
		$view .= '</p><p class="llist">';
		$view .= h($result['content'], ENT_QUOTES);
		$view .= "</p>";
  }

}
?>

<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Jazz List</title>
<link rel="stylesheet" href="./css/date.css">

<style>div{padding: 10px;font-size:16px;}
</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header>
<div class="header">
			<div class="A">
		<p><a class="navbar-brand" href="index.php" style="color:white;">enter data</a></p>
		</div>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
    <div class="container jumbotron"><?= $view ;?></div>
</div>
<!-- Main[End] -->

<style>
a{
    /* text-decoration: none; */
		font-family:fantasy;
		font-size: 40px;
}

body {
	background-image: url(img/bg.png);
  background-size: 120%;
}

</style>

</body>
</html>
