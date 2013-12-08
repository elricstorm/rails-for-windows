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
Don't be afraid to experiment as we move along in this chapter.  On my vm I've created a folder called Development where
I'll be installing my rails apps.  Open up a normal command prompt and navigate to your directory.

     C:\Development> rails new wrails

That's it.  You just created your first application.  We're done!

     Just Kidding!!

#### GemFile

Remember the Sublime Text editor we installed earlier?  You can click the "Windows" key on your keyboard, type Sublime and open Sublime Text 2.
If you decide you want to use Sublime Text on a more permanent basis, I recommend installing Sublime Text 3 as shown in Chapter 02: Getting Started.
If you already have a Sublime Text 3 key, install it manually and then apply your key.  You can customize Sublime Text 3 with the customization
outlined in Chapter 02.

With Sublime Text open, click File -> Open Folder -> and choose your Wrails directory.  Once open you can navigate to your Gemfile in the root of the
directory.  Double click it to open it.

Add/Edit your Gemfile so it looks like this:

     NOTE:  If any of the versions listed in our gemfile for the gems listed below are newer, simply update the versions below and then copy/paste them into your gemfile.

````ruby
source 'https://rubygems.org'
gem 'rails', '4.0.2'                        # Bundle edge Rails: gem 'rails', github: 'rails/rails'
gem 'sass-rails', '~> 4.0.0'                # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'                  # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'              # Use CoffeeScript for .js.coffee assets and views
gem 'turbolinks'                            # Turbolinks makes links in your web application faster.
gem 'jbuilder', '~> 1.2'                    # Build JSON APIs with ease.
gem 'bcrypt-ruby', '~> 3.1.2'               # Use ActiveModel has_secure_password
gem "jquery-rails"                          # jQuery 1.10.x with ujs
gem "foundation-rails", "~> 5.0.2.0"        # Foundation 5 with Rails
gem "mysql2"
group :doc do
  gem 'sdoc', require: false
end
````

#### Commands

Once finished updating your gemfile you can run bundle to update and we can also install some of the components of our new rails app:

First we'll run bundle to install all the gems and their dependencies:

     C:\Development\wrails> bundle

Then we'll install [jquery rails](https://github.com/rails/jquery-rails):

     C:\Development\wrails> rails g jquery:install

Let's install [Foundation](http://foundation.zurb.com/).

     C:\Development\wrails> rails g foundation:install

If prompted to overwrite any files, choose Y for yes.

At this point, we've finished creating and installing our base rails application.  Let's apply some manual fixes and then summarize what
type of stack we are using.

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

#### Configuring your MySQL database

Open up the wrails\config\database.yml file

Remove and add the following:

````ruby
# MySQL 2 Configuration
development:
  adapter: mysql2
  encoding: utf8
  database: wrails_development
  username: root
  password: Passw0rd!
  host: 127.0.0.1
  port: 3306

test:
  adapter: mysql2
  encoding: utf8
  database: wrails_test
  username: root
  password: Passw0rd!
  host: localhost
  port: 3400

production:
  adapter: mysql2
  encoding: utf8
  database: wrails_production
  username: root
  password: Passw0rd!
  host: localhost
````

After saving your file, let's create the database and migrate it.

     C:\Development\wrails> bundle exec rake db:create
     C:\Development\wrails> bundle exec rake db:migrate

#### Running your application

     C:\Development\wrails> rails server

If you are prompted with a Windows Security Alert message, check both private and public networks and then click the **Allow access** button.  Once
completed, open your web browser and navigate to [http://localhost:3000](http://localhost:3000).  You should receive a Welcome aboard, You're riding
Ruby on Rails!

### Application: Stage 1

We went through a lot of things very quickly.  Let's backtrack and summarize what we've accomplished so far.

TODO

