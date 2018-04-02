class UsersController < ApplicationController
    def show # show.html.erbを表示するアクション
        @user = User.find(params[:id]) # Userモデルから、idでユーザを探す
        # @kanji = "漢字" 
    end
end
  