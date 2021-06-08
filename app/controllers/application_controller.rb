class ApplicationController < ActionController::Base

  def hello
    render html: 'herokuデプロイテスト'
  end
end
