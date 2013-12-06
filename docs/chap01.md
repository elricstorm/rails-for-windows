## Chapter 01:  Understanding the Windows Environment

### Windows Environments

Before you jump into this chapter let me start by setting some very simple expectations for you.  This chapter is meant to help you better understand and familiarize yourself with Windows and some of the basics you'll need to grasp before diving into the other chapters later.  The main environments we will focus on are Windows 7 and Windows 8.  We'll also look into the difference between 32-bit and 64-bit OS's and discuss potential impacts on developing and what changes you may need to make.

#### Setting Expectations

The topics we will discuss here are:

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

Everything you need to initially setup and use Ruby and Ruby on Rails (RoR) is just as readily available for Windows as it is for any other operating environments.  You aren't going to install Ruby (the language) or RoR (the framework) and find out you can't use them.  You will also find that what you thought you knew about Windows as a development environment has changed quite substantially over the years.

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

     C:\Users\Joel> set
     C:\Users\Joel> set nameOfVariable

<a href="http://www.flickr.com/photos/69355230@N03/10979561275/" title="cmd_environment"><img src="http://farm4.staticflickr.com/3811/10979561275_c62d9ce40e_b.jpg" width="667" height="787" alt="cmd_environment"></a>

The command prompt allows you to find/retrieve your environment variables through the set command.  You can also use set to temporarily set an environment variable that will remain active _only_ while the current command window is open.  Once the window is closed, all variables set for that previously active session are no longer available.  In order to set permanent variables we can use the setx command.

##### PowerShell

Finding your environment variables in PowerShell is also relatively easy.  Go to Start > type powershell and open *Windows PowerShell*.  Type the following:

     PS C:\Users\Joel> cd env:
     PS Env:\> dir

<a href="http://www.flickr.com/photos/69355230@N03/10979657776/" title="ps_environment"><img src="http://farm8.staticflickr.com/7405/10979657776_a86a6201eb_c.jpg" width="800" height="603" alt="ps_environment"></a>

PowerShell allows you to go straight to your environment path and view your variables similar to a directory structure.

#### Setting Environment Variables

##### GUI View

Win7: Click **Start** > Type **environment** > select **Edit the system environment variables** > click the Environment Variables button

Win8: Press the **Windows key** on your keyboard > Type **environment** > select **system** > select **Edit the system environment variables** > click the Environment Variables button

For user specific variables that only apply to you, variables can be created and set in the top section.  Click the **New** button and type a variable name and also a variable value.  As an example, if you wanted to set your GEM paths to a specific location you could do:

     Variable name:  GEM_HOME
     Variable value: C:\Users\YourUserName\.gems

Likewise, you can also reference another location from its variable name by surrounding it with the percent sign (%).  Let's say you want to set the GEM_PATH variable to the GEM_HOME location as well.

     Variable name:  GEM_PATH
     Variable value: %GEM_HOME%

For system variables, if you wanted to append to your current path you would find the Path variable and click the **Edit** button.  Go to the end of the line and place a semicolon ; and then add your new path location.  Example:  ;C:\SomeNewPath\Location.

##### Command Prompt

Win7: Click **Start** > Type **cmd** and hit the Enter key

Win8: Press the Windows key on your keyboard > Type **cmd** and hit the Enter key

     C:\> setx /?

Here are some examples (you do not need to set these):

     C:\> setx PATHEXT %PATHEXT%;.RB;.RBW
     C:\> setx HTTP_PROXY http://yourproxy:port
     C:\> setx HOME %USERPROFILE%
     C:\> setx GEM_HOME %HOME%\.gems
     C:\> setx GEM_PATH %GEM_HOME%
     C:\> setx CHOCOLATEY_BIN_ROOT C:\Development

Setx takes the following simple conditions:  SETX [SOME_VARIABLE] [SOME_VALUE] (without the brackets).  

##### PowerShell

Go to Start > type powershell and open *Windows PowerShell*.  Type the following:

     PS C:\> cd env:
     PS Env:\> dir

Notice all of those environment variables.  You can edit them by just typing:

     PS C:\> $env:NAMEofVARIABLE = "SomeValue";

If you want to create a new variable run an example test using:

     PS C:\> $env:TESTVAR = "C:\"
     PS C:\> dir

You should see your new test variable.  I should also note that you still have the availability of using the setx commands in PS.  So, you could use that method also.  

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

#### 32-bit or 64-bit Environment

The benefits of using a 64-bit operating system are most apparent when you have a large amount of random access memory (RAM) installed on your computer, typically 4 GB of RAM or more. In such cases, because a 64-bit operating system can handle large amounts of memory more efficiently than a 32-bit operating system, a 64-bit system can be more responsive when running several programs at the same time and switching between them frequently.  Driver support is likely to be a non-issue with newer systems now as most software developers have worked diligently to keep up with changes in technology.  Most programs designed for the 32-bit version of Windows will work on the 64-bit version of Windows. Notable exceptions are many antivirus programs.  

If you plan on using virtualization, you can make use of multi-core processors and additional RAM to run multiple instances simultaneously.  32-bit OS environments do not allow you to make use of RAM over 4gb whereas 64-bit does.  

Ruby also comes in 32-bit and 64-bit flavors.  We'll discuss some of the issues with Ruby versions in **Chapter 02: Getting Started**.  However, the main issues you may encounter when operating on 64-bit Ruby environment are with pre-compiled gems.  Some gems may not work.  
