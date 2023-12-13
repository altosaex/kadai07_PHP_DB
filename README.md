# kadai07_PHP_DB
PHP2回目
「kadai07_PHP_DB」の課題用リポジトリ

## DEMO

index.phpより確認可能

## 紹介と使い方

- 「gs_jazz.sql」内に以下データが蓄積され、[select.php]に自分のお気に入り楽曲の画像リストが並んでいく
  投稿日時、楽曲名、アーティスト名、YoutubeURL(埋め込みURL)、コメント

## 工夫した点
 - YoutubeURLにはあえて「html special characters」をつけずにそのまま埋め込みURLが反映されるようにした
 - 画像はChatGPTで作成。デザインは参考URLより

## 苦戦した点
- 背景画像の上にformやタイトルを載せるのに意外と時間がかかった
  →参考ページのデータをコピーしたせいで余計なデータが多く、無断時間がかかってしまった
  →style.cssファイルが2つ存在していることに今気が付き、cssが反映されず何時間も時間をかけてしまった（結局phpデータ内にstyleタグを加えて対応した)

## 参考にした web サイトなど

デザインの参考にしました

- https://photoshopvip.net/136065#google_vignette
  
