# User Agent Parser

`Ruby version - 2.7.3`

This README would normally document whatever steps are necessary to get the
application up and running.

# Local/Dev Configuration
* If you don't have homebrew installed, go ahead and do that. The best way to do so is via the homebrew site's instructions [here.](https://brew.sh/)
* From here, use `rbenv` to install `ruby 2.7.3`
* `gem install rails`
  * If you run into issues with the rails install and webpacker not installing correctly, `brew install yarn` to get node and nodejs to install, as there seems to be some issues with node installing with ruby/rails.
* `bundle install` - Make sure you don't run into any issues, if you do, please raise this as an issue on the repo.
* `yarn install` - This will allow your rails instance to access the JS runtime when it does get up and running.
* From here, you should have a working local/dev instance of the app. Run `rails server` and you should be good to go!


Things you may want to cover:

* System dependencies

* Database creation

* Database initialization

## How to run the test suite

* Rake - https://github.com/ruby/rake
* 

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...



# Template

[Template Used Across Site](https://www.w3schools.com/w3css/tryit.asp?filename=tryw3css_templates_start_page&stacked=h)


# Resources:

* [MDN Docs on User Agents](https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/User-Agent)
* [Current Market Share of Browsers](https://www.statista.com/statistics/272697/market-share-desktop-internet-browser-usa/#:~:text=The%20most%20popular%20current%20browsers,Mozilla%20Firefox%20and%20Apple's%20Safari.)
* [browser gem](https://github.com/fnando/browser/blob/main/README.md)
* https://stackoverflow.com/questions/47067374/rails-browser-gem-support
