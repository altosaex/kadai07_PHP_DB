<?php

/**
 * 1. index.phpのフォームの部分がおかしいので、ここを書き換えて、
 * insert.phpにPOSTでデータが飛ぶようにしてください。
 * 2. insert.phpで値を受け取ってください。
 * 3. 受け取ったデータをバインド変数に与えてください。
 * 4. index.phpフォームに書き込み、送信を行ってみて、実際にPhpMyAdminを確認してみてください！
 */

//1. POSTデータ取得
$title = $_POST['title'];
$artist = $_POST['artist'];
$URL = $_POST['URL'];
$content = $_POST['content'];

//2. DB接続します
try {
    //ID:'root', Password: xamppは 空白 ''
    $pdo = new PDO('mysql:dbname=gs_jazz;charset=utf8;host=localhost', 'root', '');
} catch (PDOException $e) {
    exit('DBConnectError:' . $e->getMessage());
}
//３．データ登録SQL作成

// 1. SQL文を用意
$stmt = $pdo->prepare("
    INSERT INTO
        gs_bm_table(id, title, artist , URL ,content, date)
    VALUES (
        NULL, :title, :artist, :URL, :content, sysdate()
        )");

//  2. バインド変数を用意
// Integer 数値の場合 PDO::PARAM_INT
// String文字列の場合 PDO::PARAM_STR
$stmt->bindValue(':title', $title, PDO::PARAM_STR);
$stmt->bindValue(':artist', $artist, PDO::PARAM_STR);
$stmt->bindValue(':URL', $URL, PDO::PARAM_STR);
$stmt->bindValue(':content', $content, PDO::PARAM_STR);

// //  3. 実行
$status = $stmt->execute();

//４．データ登録処理後
if($status === false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit('ErrorMessage:' . $error[2]);
} else {
    //５．index.phpへリダイレクト
    // 成功した場合
    header('Location: index.php');
}