## Chapter 06:  Your Rails App

In this chapter we'll focus on building a new rails app on windows.  Before we begin, here's the default stack we'll use
for this particular application:

* [jQuery](https://github.com/rails/jquery-rails)
* [Foundation 5.x](https://github.com/zurb/foundation-rails)
* [MySql](https://chocolatey.org/packages/mysql)

Going forward, anytime I ask you to input a command, I'll add [enter] after the command to note that I want you to type the command and hit the enter key.

### Creating the Application

If you haven't installed Ruby and Ruby on Rails using the Automated or Manual methods described and outlined in Chapter 04
and Chapter 05, visit those chapters and make sure to install the pre-requisites first.

#### Rails App

Our base application is going to be called **Wrails**, Windows on Rails.  You can name your app anything you would like.
Don't be afraid to experiment as we move along in this chapter.  On my vm I've created a folder called Development where
I'll be installing my rails apps.  Open up a normal command prompt and navigate to your directory.

     C:\Development> rails new wrails   [enter]

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

     C:\Development\wrails> bundle   [enter]

Then we'll install [jquery rails](https://github.com/rails/jquery-rails):

     C:\Development\wrails> rails g jquery:install   [enter]

Let's install [Foundation](http://foundation.zurb.com/).

     C:\Development\wrails> rails g foundation:install   [enter]

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

production:
  adapter: mysql2
  encoding: utf8
  database: wrails_production
  username: root
  password: Passw0rd!
  host: localhost
````

After saving your file, let's create the database and migrate it.

     C:\Development\wrails> bundle exec rake db:create   [enter]
     C:\Development\wrails> bundle exec rake db:migrate   [enter]

#### Running your application

     C:\Development\wrails> rails server   [enter]

If you are prompted with a Windows Security Alert message, check both private and public networks and then click the **Allow access** button.

<a href="http://www.flickr.com/photos/69355230@N03/11263991245/" title="ruby_runtime"><img src="http://farm4.staticflickr.com/3762/11263991245_cbbcf3305b_o.png" width="533" height="383" alt="ruby_runtime"></a>

Once completed, open your web browser and navigate to [http://localhost:3000](http://localhost:3000).  You should receive a Welcome aboard, You're riding
Ruby on Rails!

### Application: Summary

We went through a lot of things very quickly.  Let's backtrack and summarize what we've accomplished so far.

* We created a new application called "Wrails".
* We updated the Gemfile which contains the gem packages our application will use.
* Some of these gems include the following:

Summary:

     sass-rails: sass stylesheets (.scss) that we'll use with our app.
     bcrypt-ruby: a solid password encryption lib that works with Activemodel.  We can use it later on when creating our authentication system.
     jquery-rails: jQuery 1.10.x
     foundation-rails: Foundation 5 provides a framework that allows others to build better designed future-friendly sites
     mysql2: The MySQL2 gem that allows us to use MySQL with our app

* We fixed an issue with execjs runtimes so that Microsoft Windows Script Host will work with Rails.
* We edited our database.yml file to incorporate MySQL.
* We created and migrated our development/test/production databases.
* We started our app to find out that it works.

## Ruby, Rails, Windows, and Paradigms

We're now at the point where we have a basic application shell that we can start to play with and get to know.  From here we can design anything.  I'm not going
to turn around and say okay, we're going to build a blog site, or even an admin interface.  I'd rather focus on something a little more valuable - how to create
and break the paradigm.  After all, isn't coding and structure simply one large pattern or model?  Rails itself is a framework that utilizes Ruby as its core
language.  But, if I've learned anything with Ruby over the years it is this philosophy:

     Ideas are intangible objects that inherit and change at will.  They can bend, twist, strengthen, lighten, dissolve, and take any shape.  What shape do you imagine?

So, what is our Rails application really?  Is it a carefully joined system of components that we maintain and design around?  Or, is it a large box of many different
shapes that we can use to build whatever we want?  I would like to think that the latter is the better way to look at things, but let's take it one step further.
What is your rails application going to offer to others in order to give it shape, direction, and life?  Think about that for a moment.  If your rails application
could speak to the masses, who would its audience be?  And, what would it say?

There are several things you should understand as we move forward.  Technology is ever changing.  You may be reading things (depending on the time) that are either
old or out-dated, or fresh and interesting.  I'm certainly not going to tell you that you "must" do it this way or that way.  I would rather be a small voice in
your world that informs you of something you may not have known or understood, and allow you to find your way out of the darkness and into the light.

We are faced with quite a few boxes in front of us, and all of them fit inside one large box:

* _BOX #1 (Windows OS)
* ___BOX #2 (Ruby Language)
* _____BOX #3 (Ruby on Rails Framework)
* _______BOX #4 (Components)

Before we begin to design our application, we should think about how we would like to work while we design.  Let's start with Box #1, Windows and move to Box #4
components.

### Windows

We already know that Windows comes with PowerShell.  One very efficient thing we can do with PowerShell is to use it with command line development while building our application.  PS houses many interesting ways to interface with our application.  A very simple example would be "aliases".  We can create aliases that make sense to "us" and use these alias
commands to efficiently move in and around our application, or even simplify lengthy commands.  We can create functions that are used with aliases to do
lengthy tasks with just a few keystrokes.  Here's an example and don't worry, what I'm going to show you won't affect your PS aliases permanently.

Open a PS prompt as an administrator (right-click run as administrator).  

     PS C:\Users\IEUser> alias   [enter]

There are a lot of aliases built in already.  

     PS C:\Users\IEUser> alias wget   [enter]

Wget is an alias for Invoke-WebRequest.  

     PS C:\Users\IEUser> alias sal   [enter]

Sal is an alias for Set-Alias which allows you to set an
alias for a command.  Let's play around a bit.  Type the following commands in a row:

     PS C:\Users\IEUser> alias h   [enter]
     PS C:\Users\IEUser> h   [enter]
     PS C:\Users\IEUser> alias r   [enter]
     PS C:\Users\IEUser> h   [enter]
     PS C:\Users\IEUser> r 2   [enter]

You've just learned how to use Get-History and Invoke-History to retrieve commands that you did while using PS during this particular session.  Imagine that you were
working for a full hour, typing different commands.  If you forgot whether or not you did a particular command, you can just find it by typing h and hitting enter.
You can also repeat the command by typing r 2 (or the history ID for the command during this session).  You also learned that sal is the alias for Set-Alias so you can
set your own aliases.

     PS C:\Users\IEUser> help sal -examples   [enter]

I love helping Sal out in a bind.  These examples show you how to use Set-Alias, or Sal to create your own aliases.  I especially like the example that describes functions.  How
about let's have a little bit of fun with creating a temporary alias.  This alias will only be good until you close the PS window.  Also I am using Sublime Text 3 as my
example.  If you are using a different editor (like Sublime Text 2 or notepad), find the path to the executable and replace/swap that out in the line below.

     PS C:\Users\IEUser> New-Item -Path $Profile -ItemType file -Force   [enter]
     PS C:\Users\IEUser> sal subl "C:\Program Files\Sublime Text 3\sublime_text.exe"   [enter]
     PS C:\Users\IEUser> function my-profile {subl $profile}   [enter]
     PS C:\Users\IEUser> sal myprofile my-profile   [enter]

The first command creates a new profile for you that you can use to store your aliases in PowerShell.  The second command was the first alias I created and was called
subl, short for sublime which will open Sublime Text 3.  The third command is a function I created called my-profile which simply forces sublime text to open my profile.
And, finally, I created another alias called myprofile which runs the function my-profile.  Try it out:

     PS C:\Users\IEUser> myprofile   [enter]

You should now have a blank page called Microsoft.PowerShell_profile.ps1 open in Sublime.  You can store the commands we just made in it if you would like.  I would suggest
you do it so that you can see how it works later on.  Store them one line at a time:

<a href="http://www.flickr.com/photos/69355230@N03/11279579474/" title="profile_ps"><img src="http://farm6.staticflickr.com/5491/11279579474_64024b3d24_o.png" width="591" height="154" alt="profile_ps"></a>

Now close the PS window and reopen it.  If you didn't add the lines to your profile then the commands we made earlier all disappeared.  If you added them to your profile and
saved it, you can type in **myprofile** and you should see sublime (or your editor) open the file.  This should help you get started with deciding what type of aliases
you want to create to help you while developing.  You could string a series of functions/aliases for use with testing, rake commands, etc.

### Ruby

Ruby comes with [IRB](http://en.wikipedia.org/wiki/Interactive_Ruby_Shell) (Interactive Ruby Shell), which allows us to execute Ruby commands with immediate
response, which can help with real-time experimenting.  Type irb and hit enter.  Type the following:

````ruby
txt = "I just learned about IRB."
p txt
````

### Ruby on Rails

RoR comes with the [rails console](http://guides.rubyonrails.org/command_line.html#rails-console) which allows us to interact with our Rails application from the
command line.  It also uses IRB.  We will go over this feature later.

### Components

TODO
