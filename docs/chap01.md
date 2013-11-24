## Chapter 01:  Understanding the Windows Environment

### Windows Environments

The main environments we will focus on are Windows 7 and Windows 8.  We'll also look into the difference between 32-bit and 64-bit OS's and discuss potential impacts on developing and what changes you may need to make.

The following areas will become a part of the discussion tree:

* Structuring and Organizing your development areas
* Working with and setting up Environment Variables
* Working with and setting up the PowerShell environment  
* Handling Proxies
* Troubleshooting Issues

The main components we'll be working with in both windows environments will either be GUI related, or involve the use of command prompts (cmd) or PowerShell (ps).  

### Windows 8.1 (Blue)

For those of you unfamiliar to Windows 8.1 I recommend installing it for free!  Skip to **Chapter 03:  Virtualization** to find out how to get an environment up and running virtually in under 15 minutes. If you already have an environment ready to go or you've completed the Virtualization chapter, continue on here. 

***

#### Why use windows again?  Please remind me

Windows is one of the easiest operating environments to use from a feature, hardware, software, and support viewpoint.  One of the main reasons is that the [usage share] (http://en.wikipedia.org/wiki/Usage_share_of_operating_systems) is much greater with **any** windows environment than it is with Linux and Mac.  Even newly showcased Windows 8 has a much greater usage share than Linux and Mac (roughly 9.25% compared to Mac(7.73%) and Linux(1.61%)).  Windows 7's usage is at almost 47%!  Windows also has better commercial support worldwide than any other environment.  I personally use (all) windows environments, Linux (centOS, Ubuntu), and MAC (Leopard).  This is not a discussion about whether or not Windows is better than the other environments.  That discussion is heavily opinionated and available all over the web.  

Everything you need to initially setup and use Ruby and Ruby on Rails (RoR) is just as readily available for Windows as it is for any other operating environments.  You aren't going to install Ruby (the language) or RoR (the framework) and find out you can't use them.  You will also find that what you thought you knew about Windows as a development environment has changed by leaps and bounds over the years.

#### The Legend

Here are the terms we'll use throughout this chapter:

* Win7 = Windows 7
* Win8 = Windows 8
* GUI = Graphical User Interface or doing something *visually*
* CMD = Command Prompt (a standard DOS command prompt)
* PS = PowerShell 
* RoR = Ruby on Rails
* VM = Virtual Machine
* IDE = Integrated Development Environment

### Structuring and Organizing your Development Area

     Discuss Virtual or Local base windows environment
     Download, install and setup a code editor
     Download, install and configure PowerShell
     Design your environment on paper
     Decide where your development library will exist 
     Finalize any basic windows configurations

Before beginning any new development project it is important to determine the layout and structure of your working area.  If you are new to Ruby and Ruby on Rails it may be difficult to understand where to begin.  We can start with some simple basics relative to both Windows 7 and Windows 8.

##### Virtual or Local

VMs have their advantages.  The ability to build an environment in minutes, test or isolate application scenarios, and then break it all down in moments can be a wonderful thing. Likewise, if you plan on staying with a simple structured environment with very few base changes, you may decide to keep a local non-virtual environment.  If you plan on setting up a VM see **Chapter 03:  Virtualization** and then come back here.  Otherwise, let's continue on.  

##### IDE or Editor

An IDE normally consists of a source code editor, build automation tools and a debugger. Several modern IDEs integrate with Intelli-sense coding features.  Editors are standard text or code editors that may or may not do additional tasks.  You could call some of the fancier editors hybrid IDE applications.  Some IDEs that are usable on Windows include RubyMine and Netbeans.  Both of these IDEs have extreme load times and tend to bottleneck resources.  

For our tutorials I recommend [Sublime Text 3] (http://www.sublimetext.com/3).  It is a very sophisticated and extremely easy to use editor that has very little resource usage.  

After you have sublime text 3 downloaded and running, do the following:

Setup Package Control.

     Click CTRL + ~

Copy and Paste the following below into the console and hit enter.

     import urllib.request,os; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); open(os.path.join(ipp, pf), 'wb').write(urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ','%20')).read())     

Close and restart Sublime Text 3.  Next, let's add some packages to make it look more friendly:

     Click Preferences > Package Control > Install Package
     Type Soda theme and click to install.
     .. repeat and type RailsCasts color and click to install this theme.
     .. repeat and type All Autocomplete and click to install.
     .. repeat and type BeautifyRuby and click to install.
     .. repeat and type Better Coffeescript and click to install.
     .. repeat and type ChangeQuotes and click to install.
     .. repeat and type SideBarEnhancements and click to install.
     .. repeat and type GitGutter and click to install.

Edit your user preferences:

     Click Preferences > Settings-User

Copy and paste in the settings from [sublime-preferences] (http://elricstorm.viewdocs.io/rails-for-windows/sublime-preferences).  Also, you may want to change/edit the ignored words.  I threw in a couple of words for fun.  

Next, download the [Inconsolata font] (http://www.levien.com/type/myfonts/inconsolata.html).  It's a great font for developing and coding.  Use the .otf version and once you download it, just click and install it.  It's that easy.  Now then, restart sublime text 3 and you should see everything looks pretty solid.  Good job!

##### Design your environment on paper

Sometimes the simplest approach to deciding where things are going to go and how things will work is just to take out a piece of paper and start writing your ideas down.  As an example from my notes:

* I want to run things virtually on 8.1.
* I want all my tools to go into C:\tools\bin
* I want my development path to be C:\development\
* >> I can add ruby or rails projects to this path also
* >> >> C:\development\ruby\ruby200
* >> >> C:\development\rails\someProject...
* >> >> C:\development\rails\someOtherProject...
* I will use github and msysgit for handling repositories
* I will use mysql for my database management
* I will use nuget and chocolatey for package management

### Working with and setting up Environment Variables

I'm going to show you how to view/set your environment variables in three different modes:  GUI, CMD(dos), PS(powershell).

##### GUI View

Win7: Click **Start** > Type **environment** > select **Edit the system environment variables** > click the Environment Variables button

Win8: Press the **Windows key** on your keyboard > Type **environment** > select **system** > select **Edit the system environment variables** > click the Environment Variables button

<a href="http://www.flickr.com/photos/69355230@N03/10979785133/" title="gui_environment"><img src="http://farm8.staticflickr.com/7453/10979785133_66022415c8_c.jpg" width="800" height="466" alt="gui_environment"></a>

This environment variables window is divided into two sections (top/bottom) for User variables and System variables.  The system variables take place system wide regardless of which users are logged in.  The user variables pertain only to the current user.  As you can see from the image, variables can be created, edited/modified right from this window.

##### Command Prompt

Win7: Click **Start** > Type **cmd** and hit the Enter key

Win8: Press the Windows key on your keyboard > Type **cmd** and hit the Enter key

* C:\Users\Joel>**set**
* C:\Users\Joel>**set _nameOfVariable_**

<a href="http://www.flickr.com/photos/69355230@N03/10979561275/" title="cmd_environment"><img src="http://farm4.staticflickr.com/3811/10979561275_c62d9ce40e_b.jpg" width="667" height="787" alt="cmd_environment"></a>

The command prompt allows you to find/retrieve your environment variables through the set command.  You can also use set to temporarily set an environment variable that will remain active _only_ while the current command window is open.  Once the window is closed, all variables set for that previously active session are no longer available.  In order to set permanent variables we can use the setx command.

##### PowerShell

Finding your environment variables in PowerShell is also relatively easy.  Go to Start > type powershell and open *Windows PowerShell*.  Type the following (in bold below):

* PS C:\Users\Joel> **cd env:**
* PS Env:\> **dir**

<a href="http://www.flickr.com/photos/69355230@N03/10979657776/" title="ps_environment"><img src="http://farm8.staticflickr.com/7405/10979657776_a86a6201eb_c.jpg" width="800" height="603" alt="ps_environment"></a>

PowerShell allows you to go straight to your environment path and view your variables similar to a directory structure.

### Working with and setting up the PowerShell environment  

Before you jump into using PowerShell, it will be beneficial to know what version you are using.  The simplest way is to open up powershell and run the following command:

     PS C:\Some\Path> $PSVersionTable.psversion

You can open up powershell a couple of different ways.

* Win8:  Click the Windows key and type powershell.  Run Powershell.
* Win7:  Click Start and type powershell.  Run Powershell.

$PSVersionTable.psversion provides you the exact version from Major|Minor|Build|Revision number.  Also, don't make the mistake of using $host or $host.version as this only returns the host version and not the engine version.  $PSVersiontable.psversion is the most reliable of them all.

At the time of this writing PowerShell is at 4.0.  If you find your PowerShell environment is lower than this you can easily upgrade it by [visiting the Microsoft download windows management framework 4.0] (http://www.microsoft.com/en-us/download/details.aspx?id=40855) page.  The windows management framework will upgrade your system to the latest PS version.  Windows 8.1 by default already comes with 4.0.

###### Configuring PowerShell

You will want to configure a few things in PowerShell.  The first task is setting the execution policy to unrestricted.  This will be one of the pre-configuration steps so that PowerShell can be used with Chocolatey and NuGet.  Follow the previous steps to open PowerShell but before clicking on PowerShell, right-click and run as an administrator.

     Tip:  You can also open a command prompt and type powershell -noprofile -command "&{start-process powershell -verb RunAs}"

The tip will open powershell as an administrator.  The main objective of sharing the tip is to show that you can access powershell many different ways.  To set the execution policy from powershell type:

     PS C:\Some\Path>  Set-ExecutionPolicy unrestricted
     PS C:\Some\Path>  Get-ExecutionPolicy

You should see that your execution policy is now unrestricted.  For now, that's all we are going to do with PowerShell.  We'll use it later on.  As an extra credit reading tip, if you want to find out more about the two commands we just used do the following:

     PS C:\Some\Path> Get-Help Set-ExecutionPolicy 
     PS C:\Some\Path> Get-Help Set-ExeuctionPolicy -Detailed
     PS C:\Some\Path> Get-Help Get-ExecutionPolicy
     PS C:\Some\Path> Get-Help Get-ExecutionPolicy -Detailed

Likewise, understand that PowerShell utilizes "objects" and "classes" similar to Ruby!  In Ruby you would access methods by typing someclass.methods.  In PowerShell you do the same by pipelining Get-Member.  Like so:

     PS C:\Some\Path> Get-ExecutionPolicy | Get-Member

And, you'll notice that there's a nice list of methods you can access for Microsoft.PowerShell.ExecutionPolicy.  If you followed this far, you've earned some **extra credit**!

### Handling Proxies

TODO

### Troubleshooting Issues

TODO

### Questions or related searches

[Stack Overflow:  Ruby on Windows] (http://stackoverflow.com/search?q=ruby+on+windows)
