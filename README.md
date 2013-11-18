Rails for Windows
================================

<pre>By Joel Dezenzio (ie. Elricstorm)</pre>

Special thanks to:

*  *Luis Lavena - [RubyInstaller & Windows Development Support](http://rubyinstaller.org/).*
*  *Rob Reynolds/Ferventcoder - [Chocolatey Package Manager Support](http://chocolatey.org/).*
*  *Daniel Kehoe - [Rails 4.0 Support, Tutorials, and Documentation](http://danielkehoe.com/).*
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

### References and Definitions

#### *[NuGet] (http://www.nuget.org/)*

Towards mid-2010, the .NET community was introduced to OpenWrap, immediately followed by a Microsoft announcement 
that they joined forces with a .NET package management project called Nubular (Nu). Based on RubyGems, it was 
rewritten to remove the Ruby dependency. The Nu command line package management system was now to be called 
NuPack. It was eventually rebranded to NuGet.

NuGet is the package manager for the Microsoft development platform including .NET.  When you use NuGet to install 
a package, it copies the library files to your solution and automatically updates your project 
(adds references, change config files, etc.). If you remove a package, NuGet reverses whatever changes it made so 
that no clutter is left.

You can develop your own package and share it via the NuGet Gallery. 

#### *[Chocolatey] (http://www.chocolatey.org/)*

Chocolatey is the equivallent of a package manager for Windows, similar to using apt-get for Linux.  It uses 
Windows Powershell and the .NET framework to allow you to silently install many different applications 
seamlessly.  When a package has an .exe file, chocolatey will crate a link "shortcut" to the file so that you 
can run that tool anywhere on the machine.  When a package has a chocolateyInstall.ps1 script in it, the script 
will be run instead.  The limitations of what can be run is defined only by the .NET framework version and 
by Powershell.



DOCUMENTATION BEING UPDATED DAILY
==================================

...
