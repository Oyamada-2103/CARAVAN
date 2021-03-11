Rails.application.routes.draw do

  # # 初期作成時に自動的に記述されるが２章のresourcesメソッド設定で削除
  # get 'blogs/index'
  # get 'blogs/show'
  # get 'blogs/new'
  # get 'blogs/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :blogs

end
