module ApplicationHelper
    def controller?(controller)
        # 引数が現在のコントローラーに含まれていたらtrueを返す
        controller.include?(params[:controller])
    end

    def action?(action)
        # 引数が現在のアクションに含まれていたらtrueを返す
        action.include?(params[:action])
    end
end
