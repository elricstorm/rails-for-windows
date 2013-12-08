## Chapter 06:  Your Rails App

In this chapter we'll focus on building a new rails app on windows.  Before we begin, here's the default stack we'll use
for this particular application:

* [jQuery](https://github.com/rails/jquery-rails)
* [Foundation 5.x](https://github.com/zurb/foundation-rails)
* [MySql](https://chocolatey.org/packages/mysql)

### Creating the Application

If you haven't installed Ruby and Ruby on Rails using the Automated or Manual methods described and outlined in Chapter 04
and Chapter 05, visit those chapters and make sure to install the pre-requisites first.

#### Rails App

Our base application is going to be called **Wrails**, Windows on Rails.  You can name your app anything you would like.
Don't be afraid to experiment as we move along in this chapter.

     C:\> rails new wrails

That's it.  You just created your first application.  We're done!

     Just Kidding!!

#### GemFile

Add/Edit your Gemfile so it looks like this:

````ruby
source 'https://rubygems.org'
gem 'rails', '4.0.1'                        # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 4.0.0'                # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                  # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'              # Use CoffeeScript for .js.coffee assets and views
gem 'turbolinks'                            # Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'jbuilder', '~> 1.2'                    # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'bcrypt-ruby', '~> 3.1.2'               # Use ActiveModel has_secure_password
gem "jquery-rails"                          # jQuery 1.10.x with ujs
gem "foundation-rails", "~> 5.0.2.0"        # Foundation 5 with Rails
group :doc do
  gem 'sdoc', require: false
end
````

#### Commands

     C:\> bundle
     C:\> rails g foundation:install

#### Applying some manual fixes

##### Fix for execjs runtimes

ExecJS lets you run JavaScript code from Ruby. It automatically picks the best runtime available to evaluate your JavaScript program, then
returns the result to you as a Ruby object.

ExecJS supports these runtimes:

* therubyracer - Google V8 embedded within Ruby
* therubyrhino - Mozilla Rhino embedded within JRuby
* Node.js
* Apple JavaScriptCore - Included with Mac OS X
* Microsoft Windows Script Host (JScript)

At the time of this writing the code that would allow the Microsoft Windows Script Host to work with ExecJS is broken.  Here is a fix to
get this working:

Navigate to the following directory:

     C:\Users\YourUserName\.gems\gems\execjs-2.0.2\lib\execjs\runtimes.rb  (open the runtimes.rb file)

Find the following code

````ruby
    JScript = ExternalRuntime.new(
      :name        => "JScript",
      :command     => "cscript //E:jscript //Nologo //U",
      :runner_path => ExecJS.root + "/support/jscript_runner.js",
      :encoding    => 'UTF-16LE' # CScript with //U returns UTF-16LE
    )
````

Change and edit it so that it looks like so:

````ruby
    JScript = ExternalRuntime.new(
      :name        => "JScript",
      :command     => "cscript //E:jscript //Nologo",
      # :command     => "cscript //E:jscript //Nologo //U",
      :runner_path => ExecJS.root + "/support/jscript_runner.js",
      :encoding    => 'UTF-8'
      # :encoding    => 'UTF-16LE' # CScript with //U returns UTF-16LE
    )
````

Save this file and now the Windows Script Host will work with ExecJS.  Hopefully this will be fixed in a later version.

