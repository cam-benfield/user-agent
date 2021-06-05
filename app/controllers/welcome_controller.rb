class WelcomeController < ApplicationController

  def index
    @browser = Browser.new(request.env["HTTP_USER_AGENT"])

    # TODO: Write out if/then with @browser for browser flows of out of date options?
  end
end
