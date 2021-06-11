# 2021/06/07
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

# 2021/06/08
Herokuへテストデプロイを行う→失敗  
原因  
herokuで使えるbundlerのversionではなかった。  
解決策  
bundlerをバージョンダウンしてgemfile.lockを規定のバージョンで再作成すること  
参考:https://yumishin.com/heroku-push-error/

# 2021/06/09
UserMVC作成
rails g scaffoldを使って作成  
基本的なメソッドや対応したviewが自動で作成される  
!注目!  
def set_user  
 @user = User.find(params[:id])
end
↑これをbedore_actionで実行しておくと全ての@userを使用するメソッド内に記述しなくても良い。メンテナンス性・可読性○

# 2021/06/11
SQL文一覧を追加他ページにてまとめる予定
