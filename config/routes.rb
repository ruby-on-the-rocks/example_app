Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  get "/fortune_url" => "api/my_examples#fortune_method"
  get "/lotto_url" => "api/my_examples#lotto_method"
  get "/counter_url" => "api/my_examples#counter_method"
end
