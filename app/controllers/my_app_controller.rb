class MyAppController < ApplicationController
  def index
    if Rails.env.production?
      render text: $redis.get('lebtivity:index:current-content')
    else
      render text: "This only serves the ember app in production"
    end
  end
end
