# 名前
<img width="500" alt="スクリーンショット 2020-07-18 21 09 08" src="https://user-images.githubusercontent.com/67328020/87911093-037b1000-caa6-11ea-9931-0bad40f49f29.png">
<br>
ネコ写真投稿型SNS 『ネコバリー』

# URL
<h3><a href="https://necovery.herokuapp.com/">href="https://necovery.herokuapp.com/</a></h3><br>
※トップページのログイン画面に、ゲストユーザー情報を入力済み。<br>
そのままログインボタンを押すと、ゲストユーザとしてログインできます。<br>
メールアドレス : guest@example.com<br>
パスワード : guest-user

# 概要
『ネコ』写真を対象とした写真投稿型SNS。<br>
『ネコ』好きな作者が、『ネコ』写真用のSNSが欲しいと思い開発。

# コンセプト
『ネコ』写真を投稿して、全ユーザーにお届けする『デリバリー』<br>
『ネコ』写真を閲覧して、ユーザーの心を治療する『リカバリー』<br>
『ネコ』＋『デリバリー』＋『リカバリー』=『ネコバリー』
<br><br>
<img width="500" alt="スクリーンショット 2020-07-07 10 09 48" src="https://user-images.githubusercontent.com/67328020/87911366-74222c80-caa6-11ea-87d1-9aab6e2f452d.png">

# デモ
![demo0](https://user-images.githubusercontent.com/67328020/87959168-6d6ad800-caed-11ea-876b-6759498d5cb9.gif)
![demo1 5](https://user-images.githubusercontent.com/67328020/87961725-19fa8900-caf1-11ea-8640-b11f21579c3c.gif)
![demo1](https://user-images.githubusercontent.com/67328020/87960567-72308b80-caef-11ea-9426-f5758f4a0874.gif)
![demo2](https://user-images.githubusercontent.com/67328020/87955115-41008d00-cae8-11ea-9ba6-dfa5e233a62b.gif)
![demo3](https://user-images.githubusercontent.com/67328020/87957286-0815e780-caeb-11ea-944c-ef4621236de9.gif)
<br>
※撮影協力 : 今井家のネコ

# 機能
<ul>
  <li>画像とコメントの投稿</li>
  <li>投稿の閲覧<br>
      投稿をスクロールして閲覧可能<br>
      画像表示サイズとコメント表示数を制限<br>
      投稿詳細ページより、内容の全てを閲覧可能
  </li>
  <li>投稿への『いいね』<br>
      投稿詳細ページより、投稿への『いいね』が可能<br>
      投稿詳細ページに『いいね』の数を表示
  </li>
  <li>投稿内容の変更（コメント）</li>
  <li>投稿内容の削除</li>
  <li>ログイン、ログアウト</li>
  <li>新規登録、退会</li>
  <li>ユーザー情報の閲覧<br>
      ユーザー一覧を閲覧可能<br>
      ユーザー詳細ページより、ID、投稿、『いいね』を閲覧可能
  </li>
  <li>ユーザー情報の編集<br>
     新規登録時、アイコンにデフォルト画像を設定<br>
     ログインユーザーのみ、ユーザー詳細ページに編集リンクの表示<br>
     編集画面より任意の画像をアイコンに変更可能<br>
     アイコンを削除し、デフォルト画像に戻すことが可能<br>
     IDとメールアドレスを変更可能
  </li>
  <li>ログイン前後で機能制限<br>
      ログイン前後でヘッダーメニューを変更<br>
      ログイン前後で表示可能なページを制限<br>
      ログイン後に投稿機能『デリバリー』と『いいね』機能が使用可能<br>
      ログイン後にユーザー一覧を閲覧可能
  </li>
  <li>ページロード時にローディング画面を表示</li>
</ul>

# レスポンシブデザイン
![responsive](https://user-images.githubusercontent.com/67328020/87936641-26211f00-cace-11ea-82cd-d63ca1996a58.gif)
![responsive5](https://user-images.githubusercontent.com/67328020/87945222-68049200-cadb-11ea-8e56-5c48b966fa5b.gif)
![responsive3](https://user-images.githubusercontent.com/67328020/87945117-42778880-cadb-11ea-9518-c6262b968a33.gif)
![responsive4](https://user-images.githubusercontent.com/67328020/87945181-59b67600-cadb-11ea-9805-8af64802b6f1.gif)
<br>
※撮影協力 : 今井家のネコ

# 開発環境
<ul>
 <li>OS : macOS Catalina</li>
 <li>Ruby 2.7.1</li>
 <li>Rails 6.0.3.2</li>
 <li>HTML 5</li>
 <li>CSS 3</li>
 <li>JQuery 1.12.4</li>
 <li>Carrierwave 2.1.0</li>
 <li>Mini_magick 4.10.1</li>
 <li>Uglifier 4.2.0</li>
 <br>
 <li>AWS-S3 <= 画像ファイルアップロード</li>
</ul>

# 注意
ポートフォリオ用<br>
不定期にデータベースを削除する可能性あり

# 作者
今井 源希 ( Motoki Imai )<br>
E-mail : mocy0516@gmail.com<br>
