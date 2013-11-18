Rails for Windows
================================

<pre>By Joel Dezenzio (ie. Elricstorm)</pre>

Special thanks to:

*  *Luis Lavena - [RubyInstaller & Windows Development Support](http://rubyinstaller.org/).*
*  *Rob Reynolds/Ferventcoder - [Chocolatey Package Manager Support](http://chocolatey.org/).*
*  *Daniel Kehoe - [Rails 4.0 Support, Tutorials, and Documentation](http://railsapps.github.io/).*
*  *Matt Wrock - [Boxstarter](http://boxstarter.org/).*

What is Rails for Windows?
--------------------------------

Rails for Windows was created to help novice to intermediate Rails Developers integrate and develop applications 
on a Windows OS platform.  If you've searched and combed the web for resources pertaining to Windows/Ruby/Rails 
development then you've probably ascertained what many of us already know and realize:

    def information_related_to_windows
      puts ("bangs head on wall " * 1000)
    end
    
Information is either missing or scattered about in hard to reach places.  You may also begin to realize that 
linux and mac discussions start to overwhelm your searches on the web.  Even if you manage to find some resources 
that seem viable, the information may be outdated or unusable.  This leads many windows developers towards the path 
of absolute frustration.  The goal for this project is to provide you as much information as possible about Windows,
Ruby, Rails, virtual development, package management, and more.

### Why use Windows when...

    Linux has apt-get for package management
    
Windows has NuGet, Chocolatey, Boxstarter, and a host of other package management configurations.  Chocolatey is 
the equivallent of apt-get for windows. Boxstarter, coupled with chocolately, allows you to do remote installations, automate installs from 
the web, network shares, usb keys, or locally.  It even has reboot resiliency with administrative rights from 
start to finish. The NuGet software that helps us to achieve package management is also <i>open source</i>. 

    Linux has Linux Shell or Bash
    
Windows has PowerShell.  PowerShell uses cmdlets which allows windows developers to create complex scripting for 
managing windows systems.  It makes use of pipes, similar to Linux. However linux shells output text while PowerShell 
takes advantage of using objects with the *[pipeline] (http://www.howtogeek.com/138121/geek-school-learning-powershell-objects/)*.  It 
is also used with Chocolatey and package management. 

    Ruby is hard to install on Windows

You can manually install Ruby using *[Rubyinstaller] (http://rubyinstaller.org/)* and you can also automate 
installations for Ruby using chocolatey or boxstarter.  All of the installation methods are easy and pain-free. Windows 
installers can also make use of the DevKit which will build and use native C/C++ extensions automatically 
when required during gem installations.

    Linux has RVM
    
Windows has PIK.  There are also new free Ruby Stack providers like *[Bitnami] (https://bitnami.com/stack/ruby)* which 
allow developers to deploy a complete environment stack with one click installation.

The main thing to realize is that Windows has come far and there are many contributors across many projects that 
invest their time to help new developers get up to speed quickly.  It can be done.

What do I need to get started?
-------------------------------

* Patience
* Some Reading Time
* <b>Windows 7 (32 or 64-bit), Windows 8 or 8.1 (32 or 64-bit)</b> 
* <b>.NET Framework 4.5 minimum</b>
* <b>PowerShell 2.0 or higher</b>
* Fingers (unless you are one of those rare toe-typists)
* <b>A simple text editor (I recommend Sublime 3)</b>

### Setting Expectations

When you are finished reading everything (<i>this includes the wiki</i>), you should know how to do the following: 

* How to use windows as a development platform
* How to install and use Ruby on Windows via manual or automated methods
* How to install and use Ruby on Rails via manual or automated methods
* An understanding of NuGet, Chocolatey, Boxstarter, RubyInstaller, Devkit, Ruby, Ruby on Rails, PIK, and PowerShell
* How to setup and use virtualbox and windows as a virtual development box
* How to setup and use git on Windows
* How to find reference material on the web
* How to contribute to the discussion

### References and Definitions (each term has a link directly to the site)

#### *[NuGet] (http://www.nuget.org/)*

Towards mid-2010, the .NET community was introduced to OpenWrap, immediately followed by a Microsoft announcement 
that they joined forces with a .NET package management project called Nubular (Nu). Based on RubyGems, it was 
rewritten to remove the Ruby dependency. The Nu command line package management system was now to be called 
NuPack. It was eventually rebranded to NuGet.

NuGet is the open source package manager for the Microsoft development platform including .NET.  When you use NuGet to install 
a package, it copies the library files to your solution and automatically updates your project 
(adds references, change config files, etc.). If you remove a package, NuGet reverses whatever changes it made so 
that no clutter is left.

You can develop your own package and share it via the NuGet Gallery. 

#### *[Chocolatey] (http://www.chocolatey.org/)*

Chocolatey is the equivallent of a package manager for Windows, similar to using apt-get for Linux.  It uses 
Windows Powershell and the .NET framework to allow you to silently install many different applications 
seamlessly.  When a package has an .exe file, chocolatey will create a link "shortcut" to the file so that you 
can run that tool anywhere on the machine.  When a package has a chocolateyInstall.ps1 script in it, the script 
will be run instead.  The limitations of what can be run is defined only by the .NET framework version and 
by PowerShell.

Chocolatey.org houses over 1,400 unique packages (at the time of this writing) and is growing tremendously.  It 
houses a huge amount of core development components and applications, some of which we will be using for our 
installation.

#### *[RubyInstaller, DevKit, and PIK] (http://rubyinstaller.org/)*

The <b>RubyInstaller</b> project provides a self-contained Windows-based installer that houses the Ruby language 
execution environment, a baseline set of required RubyGems and extensions, and the full text of the wonderful 
book, The Book of Ruby.  The Ruby Installer is currently available only for the Windows platform.

One of the challenges many Ruby on Windows users have is how to easily use native RubyGems from the community 
such as the rdiscount or curb gems. In many cases this isn’t a problem because the extension author has 
provided a binary gem compatible with the users Ruby environment. In other cases, only the extension source 
code is available in the gem and the user is expected to have a “sane” environment installed and configured 
in order to build and use the native gem. A “sane” environment typically means a system with make, gcc, sh 
and similar *nix build tools installed.

This expectation of a “sane” build environment is not always true for Windows users and is the primary reason 
why the <b>DevKit</b> was created. The DevKit, based upon MSYS and MinGW components, is an easy-to-install and 
easy-to-use solution for quickly setting up a “sane” build environment, enabling you to use most native 
RubyGems developed by the Ruby community.

The DevKit is used to build MRI Ruby and the required dependencies needed to deliver the RubyInstaller for 
Windows. Many community members also use the DevKit as their “foundation” toolkit for building other 
native software.  The DevKit is currently available for download as a self-extracting archive and a 
Windows installer is in development.

<b>Pik</b> is a tool to manage multiple versions of ruby on Windows. It can be used from the Windows command 
line (cmd.exe), Windows PowerShell, or Git Bash.

#### *[Boxstarter] (http://boxstarter.org/)*

Boxstarter leverages Chocolatey packages to automate the installation of software and create repeatable, 
scripted Windows environments. Chocolatey makes installing software very easy with no user 
intervention. Boxstarter enhances Chocolatey's functionality and provides an environment that is optimized 
for installing a complete environment on a fresh OS install as well as some other specific scenarios.


#### *[Rails Examples and Tutorials] (http://railsapps.github.io/)*



DOCUMENTATION BEING UPDATED DAILY
==================================

...
