Railsチュートリアル開始  
Rails6版テキスト使用  
開発環境  
IDE:vscode  
言語:ruby 3.0.0  
フレームワーク:rails 6.1.3.2  

rails6導入について  
rails5とは違いwebpackerが標準となったためyarnがインストールされていないとエラーが出る。  
※Webpackerとは、 Webpackを使用してRuby on Rails上でJavaScript開発をするために必要な一連のまとまりを、標準で実装することができるgemパッケージ  
※Yarnとは、主にJavaScriptで開発されたプログラム部品（モジュール）を管理するためのパッケージ管理システムの一つ。 npmと互換性があり、乗り換えたり併用することができる  
↑yarnでwebpackerを管理するためyarnが必要  

Herokuへテストデプロイを行う→失敗  
原因  
herokuで使えるbundlerのversionではなかった。  
解決策  
bundlerをバージョンダウンしてgemfile.lockを規定のバージョンで再作成すること  
参考:https://yumishin.com/heroku-push-error/

UserMVC作成
rails g scaffoldを使って作成  
基本的なメソッドや対応したviewが自動で作成される  
!注目!  
def set_user  
 @user = User.find(params[:id])
end
↑これをbedore_actionで実行しておくと全ての@userを使用するメソッド内に記述しなくても良い。メンテナンス性・可読性○

SQL文一覧を追加他ページにてまとめる予定

3章静的ページ作成  
migrate状態をVERSION=Nの状態に戻す  
rails db:migrate VERSION=0

テストスイート（Test Suite)を作成することで正しく運用すれば開発が早く進む。  
多くコードを書かなければならないのになぜ？→まだわからないのでテストをしっかり勉強  
※TDD(テスト駆動開発)最初にテストを書き（テストファースト）それを元に最低限実装し、それを洗練させる工程を繰り返す  
・Assertion：アクションをgetして正常に動作を確認する手法  
ex:get static_pages_home_url  
assert_response :success  

view共通部分のDRYについて
application.html.erb→<%= yield(:title) %>
view→<% provide(:title, "Help")%>  
provideメソッドでyieldに値を渡せる

railsコンソールをnanoにする  
nano ~/.irbrc  
上記ファイルに下記を追加  
IRB.conf[:PROMPT_MODE] = :SIMPLE  
IRB.conf[:AUTO_INDENT_MODE] = false  

(0..9).to_a  
0〜9を配列に変換  

a = [1,2,3]
a.reverse
=>[3,2,1]
このままでは変更が保存されないが「破壊的」メソッドを使用することで変更することができる
a.reverse!のようにメソッドの末尾に「!」をつける. 

eachとmapの違い  
どちらも再起的な処理を行いたいときに使用するが、戻り値が違う. 
```
array = [1, 2, 3]
result = array.map do |item|
  item * 2
end
=>[2, 4, 6]
```
このようにmapは戻り値がmap do endの間の処理をした後が返ってくる  

hashとシンボル. 
基本的には配列と変わらないがキーに整数値以外を使うことができる
```
>> user = { "first_name" => "Michael", "last_name" => "Hartl" }
=> {"last_name"=>"Hartl", "first_name"=>"Michael"}
```
Railsではキーにシンボルを使うのが一般的
```
>> user = { :name => "Michael Hartl", :email => "michael@example.com" }
=> {:name=>"Michael Hartl", :email=>"michael@example.com"}
```
