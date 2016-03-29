class MyAppController < ApplicationController
  def index
    if Rails.env.production?
      render text: $redis.get('omarhamdan:index:current-content')
    else
      render text: "This only serves the ember app in production"
    end
  end
end
