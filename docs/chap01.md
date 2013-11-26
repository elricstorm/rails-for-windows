## Chapter 01:  Understanding the Windows Environment

### Windows Environments

Before you jump into this chapter let me start by setting some very simple expectations for you.  This chapter is meant to help you better understand and familiarize yourself with Windows and some of the basics you'll need to grasp before diving into the other chapters later.  The main environments we will focus on are Windows 7 and Windows 8.  We'll also look into the difference between 32-bit and 64-bit OS's and discuss potential impacts on developing and what changes you may need to make.

#### Setting Expectations

The topics we will discuss here are:

* Structuring and Organizing your development areas
* Working with and how to set Environment Variables
* Working with and how to set up the PowerShell environment  

The main components we'll be working with in both windows environments will either be GUI related, or involve the use of command prompts (CMD) or PowerShell (PS). 

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

### Windows 8.1 (Blue)

For those of you unfamiliar to Windows 8.1 I recommend installing it for free!  Skip to **Chapter 03:  Virtualization** to find out how to get an environment up and running virtually in under 15 minutes. If you already have an environment ready to go or you've completed the Virtualization chapter, continue on here. 

***

#### Why use windows again?  Please remind me

Windows is one of the easiest operating environments to use from a feature, hardware, software, and support viewpoint.  One of the main reasons is that the [usage share] (http://en.wikipedia.org/wiki/Usage_share_of_operating_systems) is much greater with **any** windows environment than it is with Linux and Mac.  Even newly showcased Windows 8 has a much greater usage share than Linux and Mac (roughly 9.25% compared to Mac(7.73%) and Linux(1.61%)).  Windows 7's usage is at almost 47%!  Windows also has better commercial support worldwide than any other environment.  I personally use (all) windows environments, Linux (centOS, Ubuntu), and MAC (Leopard).  This is not a discussion about whether or not Windows is better than the other environments.  That discussion is heavily opinionated and available all over the web.  

Everything you need to initially setup and use Ruby and Ruby on Rails (RoR) is just as readily available for Windows as it is for any other operating environments.  You aren't going to install Ruby (the language) or RoR (the framework) and find out you can't use them.  You will also find that what you thought you knew about Windows as a development environment has changed by leaps and bounds over the years.

### Structuring and Organizing your Development Area

Before beginning any new development project it is important to determine the layout and structure of your working area.  

##### Virtual or Local

VMs have their advantages.  The ability to build an environment in minutes, test or isolate application scenarios, and then break it all down in moments can be a wonderful thing. VMs operate independently and don't affect any local configurations at all.  If you plan on staying with a simple structured environment with very few base changes, you may decide to keep a local non-virtual environment.  If you plan on setting up a VM see **Chapter 03:  Virtualization** and then come back here.  Otherwise, let's continue on.  

##### Design your environment on paper

Sometimes the simplest approach to deciding where things are going to go and how things will work is just to take out a piece of paper and start writing your ideas down or organize a checklist.  As an example from my notes:

* [x] Install and use VirtualBox for VM management
* [x] Install and use a Windows 8.1 VM
* [ ] Configure Windows PowerShell
* [ ] Install and use Chocolatey and NuGet for package management
* [ ] Install Ruby 2.0 using Chocolatey
* [ ] Install Rails 4.x using Chocolatey
* [ ] Install Uru for managing Ruby environments
* [ ] Install MySQL using Chocolatey for my Database Management
* [ ] Install and use Msysgit and GitHub
* [x] Install and use Sublime Text 3 as my code editor
* [ ] Set Windows Environment Paths for Ruby Path Extensions
* [ ] Set Windows Environment Paths for Gems
* [ ] Set Windows Environment Paths for Chocolatey 

You don't have to do anything right now.  This is just an example list.  You may also want to determine if you would like to setup your directory structures a certain way.  Maybe you'd like everything that is tool related to automatically go in C:\tools\bin, or you might want to have a development library setup in C:\Development.  

Take a few minutes to determine what you want.  If you don't know then you may want to **embrace the stack**.  

###### Embracing the Stack

Don't know what you want?  That's fine.  Start with a default stack that someone else created for you.  A stack can be a number of items that form a working environment.  An example stack might be:

* Windows 8.1
* Ruby 2.0
* Rails 4.0
* Mongrel
* RubyMine IDE
* MongoDB
* Rspec | Cucumber Testing

This is just a base example.  You start with someone else's idea in a VM test environment, play with it, get to know it, and then decide what you like the most.  You can then test other stacks until you find a good mix and match of development style that fits your own.  Then create your own stack!  This is one reason why a VM may be one of the best options to go as it provides very good flexibility.

### Working with and setting up Environment Variables

I'm going to show you how to view/set your environment variables in three different modes:  GUI, CMD(dos), PS(powershell).

#### Viewing or Finding Variables

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

#### Setting Environment Variables

todo

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
