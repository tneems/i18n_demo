I18nDemo::Application.routes.draw do
  default_constraints = {
    :locale => /[a-z]{2}(\-[A-Z]{2})?/
  }
  scope "(:locale)", :constraints => default_constraints, defaults: { locale: :en } do
    root to: "users#index"
    resources :users
  end
end
