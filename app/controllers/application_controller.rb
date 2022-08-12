class ApplicationController < ActionController::Base
  # ログインしていない場合はログイン画面に遷移する(一番初めに実行される)
  before_action :authenticate_user!
  # deviseのコントローラーから呼び出された場合
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  # メソッド名は慣習
  def configure_permitted_parameters
    # parmit（:deviseの処理名, keys: [:許可するキー]
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end
end
